#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
色盲派对（map_all / color）地板图案生成器
================================================================
生成 ran_fill/6_init..17_init 及其引用的图案宏文件 / 助手文件，并断言：

  1. 所有 fill（含图案矩形）落在每回合清空区 x -7..32 / z 75..114 内
  2. 每个图案矩形都落在可玩区 x -5..30 / z 77..112（36x36）内
  3. R0「判定前整平面」：逐格模拟 init 的执行（清空 -> 底色铺满 -> 图案 -> ensure_full），
     断言 36x36 的 1296 格没有一格是 air，并打印每个变体的图案占比
  4. 变体宏文件只引用 init 会设置的 $(cN)；init 只设置它声明的 c1..cK
  5. 打印每类型/每变体的执行指令数（含被调用函数的展开）与方块写入量

性能模型（实测常数）：
  pick        = 53 条（rancolor 2 + 3_whichblock 50）
  存 cN       =  1 条
  ensure_full =  1 条（$fill ... replace air；第一次调用同时充当底色铺满）
  布局宏文件   =  1 条调用 + 每矩形 1 条
  散点盖章     =  2_place 的 body（18 + w²）+ 每点 1 条派发

用法:  python tools/color_floor_gen.py [--dry-run | --verify]
  --dry-run  只做断言与统计，不写盘
  --verify   额外把生成结果与磁盘上的文件逐字节对比
"""

from __future__ import annotations

import math
import random
import re
import sys
from pathlib import Path

# ---------------------------------------------------------------- 路径与常量
REPO = Path(__file__).resolve().parents[1]                    # .../MiniGames
RANFILL = REPO / "datapacks/map_all/data/minecraft/function/color/ran_fill"
TOOL_REL = "../tools/color_floor_gen.py"                      # 生成文件里的出处注释

Y = 17
AX0, AX1 = -5, 30                                             # 可玩区 x
AZ0, AZ1 = 77, 112                                            # 可玩区 z
CX0, CX1, CZ0, CZ1 = -7, 32, 75, 114                           # 清空区（40x40）
AW, AD = AX1 - AX0 + 1, AZ1 - AZ0 + 1                          # 36 x 36
ARENA_CELLS = AW * AD                                          # 1296
ACX, ACZ = 12.5, 94.5                                          # 场地中心

# 每回合只掷一次的形状参数（同一回合内图案不变；只有颜色每秒重掷）
V_SCORE = "color.ran.variant"

# 难度阶段（按轮数 color.round tick 判定，不再用 color.tt）
ROUND_SIZE = 10    # 轮数 >= 10：形状锁定，只允许"同族"变体之间换尺寸
ROUND_SHAPE = 15   # 轮数 >= 15：形状也允许变化（整表重掷）

# 散点噪点：位置每秒重掷（可变），大小由 reroll 每回合固定（不可变）
DOT_TAG = "color.dot"
DOT_COUNT = 16
DOT_RANGE = 14        # spreadplayers maxRange
DOT_MAXW = 4          # 印章最大边长（stamp1..4）

HEADER = [
    "##",
    "## Datapack Upgrader v1.0.2 by wifi_left",
    "## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader",
    "## ",
]

TAIL = [
    "# 目标色：随机采样一个真实地板格（范围 17 保证落在已铺满区内）",
    'summon marker 13.00 18 95.00 {Tags:["color.tmp"]}',
    "spreadplayers 12.50 94.50 0 17 under 20 false @e[tag=color.tmp]",
    "execute as @e[tag=color.tmp] at @s run clone ~ ~-1 ~ ~ ~-1 ~ -52 35 64 strict",
    'kill @e[tag=color.tmp]',
]

# 外部文件实测指令数（body，不含调用那一行）；key 为 key_of() 归一化后的名字
EXTERNAL = {
    "color/rancolor": 1,
    "2_place": 26,          # 16 行条件 clone + rancolor(2) + 平均 w²(7.5)，w 为 1..4 均匀
    "3_whichblock": 50,
    "3_place": 1,
}

CALL_RE = re.compile(r"(?:^|\s)function\s+([A-Za-z0-9_\-:./]+)")
MACRO_RE = re.compile(r"\$\(c(\d+)\)")


# ---------------------------------------------------------------- 小工具
def norm(name: str) -> str:
    return name[len("minecraft:"):] if name.startswith("minecraft:") else name


def key_of(name: str) -> str:
    """把函数引用归一化成 files / EXTERNAL 的 key"""
    n = norm(name)
    prefix = "color/ran_fill/"
    return n[len(prefix):] if n.startswith(prefix) else n


def cmds(lines):
    """非注释、非空行"""
    return [ln for ln in lines if ln.strip() and not ln.strip().startswith("#")]


class Rect:
    __slots__ = ("x1", "z1", "x2", "z2", "c")

    def __init__(self, x1, z1, x2, z2, c):
        self.x1, self.x2 = min(x1, x2), max(x1, x2)
        self.z1, self.z2 = min(z1, z2), max(z1, z2)
        self.c = c

    @property
    def area(self):
        return (self.x2 - self.x1 + 1) * (self.z2 - self.z1 + 1)

    def __repr__(self):
        return f"R({self.x1},{self.z1})-({self.x2},{self.z2})c{self.c}"


def merge(rects):
    """把同色、且能拼成更大矩形的相邻矩形合并（降指令数与文件行数）"""
    cur = list(rects)
    changed = True
    while changed:
        changed = False
        out = []
        for r in cur:
            hit = None
            for i, o in enumerate(out):
                if o.c != r.c:
                    continue
                m = _try_merge(o, r)
                if m is not None:
                    hit = (i, m)
                    break
            if hit is None:
                out.append(r)
            else:
                out[hit[0]] = hit[1]
                changed = True
        cur = out
    return cur


def _try_merge(a: Rect, b: Rect):
    if a.z1 == b.z1 and a.z2 == b.z2:                 # 横向拼接
        if a.x2 + 1 == b.x1 or b.x2 + 1 == a.x1:
            return Rect(min(a.x1, b.x1), a.z1, max(a.x2, b.x2), a.z2, a.c)
    if a.x1 == b.x1 and a.x2 == b.x2:                 # 纵向拼接
        if a.z2 + 1 == b.z1 or b.z2 + 1 == a.z1:
            return Rect(a.x1, min(a.z1, b.z1), a.x2, max(a.z2, b.z2), a.c)
    return None


def runs_to_rects(cells):
    """cells: {(x,z): 色序} -> 先按行取同色 x 游程，再纵向合并"""
    out = []
    for z in range(AZ0, AZ1 + 1):
        xs = [x for x in range(AX0, AX1 + 1) if (x, z) in cells]
        if not xs:
            continue
        start = prev = xs[0]
        col = cells[(xs[0], z)]
        for x in xs[1:]:
            c = cells[(x, z)]
            if x == prev + 1 and c == col:
                prev = x
            else:
                out.append(Rect(start, z, prev, z, col))
                start = prev = x
                col = c
        out.append(Rect(start, z, prev, z, col))
    return merge(out)


class Variant:
    def __init__(self, suffix, desc, rects, group=None):
        self.suffix = suffix
        self.desc = desc
        self.rects = merge(rects)
        # group = 形状族。"同族"的变体之间只差尺寸，难度阶段允许互相重掷；
        # 不填 = 自己一族（形状不同，永不参与难度重掷）
        self.group = group if group is not None else f"#{suffix}"


class Type:
    def __init__(self, tid, name, k, variants, runtime=None):
        self.tid = tid
        self.name = name
        self.k = k
        self.variants = variants
        self.runtime = runtime      # "confetti" = 位置运行时随机、大小每回合固定


# ---------------------------------------------------------------- 图案几何
def g_checker(size):
    """棋盘格：底色 c1 铺满，奇偶格用 c2 覆盖"""
    out, n = [], AW // size
    for i in range(n):
        for j in range(n):
            if (i + j) % 2 == 1:
                x, z = AX0 + i * size, AZ0 + j * size
                out.append(Rect(x, z, x + size - 1, z + size - 1, 2))
    return out


def g_grid(wantstep, width=1):
    """细线网格：底色 c1，竖线 c2，横线 c3"""
    out, step = [], wantstep
    x = AX0 + step
    while x + width - 1 <= AX1:
        out.append(Rect(x, AZ0, x + width - 1, AZ1, 2))
        x += step
    z = AZ0 + step
    while z + width - 1 <= AZ1:
        out.append(Rect(AX0, z, AX1, z + width - 1, 3))
        z += step
    return out


def g_cross(width):
    """十字：底色 c1 + c2 的竖条与横条（偶数宽，绕 12.5 / 94.5 居中）"""
    h = width // 2
    return [Rect(13 - h, AZ0, 12 + h, AZ1, 2), Rect(AX0, 95 - h, AX1, 94 + h, 2)]


def g_arrow():
    """箭头（指向 +z）：底色 c1 + c2 的杆与三角头"""
    out = [Rect(11, AZ0, 14, 96, 2)]
    for z in range(97, AZ1 + 1):
        t = (z - 97) / (AZ1 - 97)
        hw = int(8 * (1 - t) + 0.5)
        x1, x2 = 13 - hw, 12 + hw
        if x2 < x1:
            x1, x2 = 12, 13
        out.append(Rect(x1, z, x2, z, 2))
    return out


def g_diagonal(count, k=4):
    """45° 斜条纹：按 d=x-z 分带，整平面铺满"""
    lo = AX0 - AZ1
    hi = AX1 - AZ0
    span = hi - lo + 1
    cells = {}
    for x in range(AX0, AX1 + 1):
        for z in range(AZ0, AZ1 + 1):
            b = min(int((x - z - lo) * count / span), count - 1)
            cells[(x, z)] = 1 + b % k
    return runs_to_rects(cells)


def g_stripes(count, vertical, k=4):
    """随机横/竖条纹：整平面被 count 条等宽条纹铺满"""
    cells = {}
    for x in range(AX0, AX1 + 1):
        for z in range(AZ0, AZ1 + 1):
            if vertical:
                b = min((x - AX0) * count // AW, count - 1)
            else:
                b = min((z - AZ0) * count // AD, count - 1)
            cells[(x, z)] = 1 + b % k
    return runs_to_rects(cells)


def g_rings(rings, k=4, rmax=26.0):
    """同心圆环（靶心）：整平面按半径分环"""
    step = rmax / rings
    cells = {}
    for x in range(AX0, AX1 + 1):
        for z in range(AZ0, AZ1 + 1):
            r = math.hypot(x - ACX, z - ACZ)
            cells[(x, z)] = 1 + (min(int(r / step), rings - 1) % k)
    return runs_to_rects(cells)


def g_spiral(turns, ccw, k=3, width=4.0, rmax=26.0):
    """螺旋：色带（c1 起循环）叠加在底色上"""
    cells = {}
    steps = int(2 * math.pi * turns * 260)
    for i in range(steps + 1):
        t = i / steps
        th = 2 * math.pi * turns * t * (1 if ccw else -1)
        r = rmax * t
        key = 1 + (int(t * turns) % k)
        for off in (-width / 2, 0.0, width / 2):
            rr = r + off
            if rr < 0:
                continue
            x = int(math.floor(ACX + rr * math.cos(th)))
            z = int(math.floor(ACZ + rr * math.sin(th)))
            if AX0 <= x <= AX1 and AZ0 <= z <= AZ1:
                cells[(x, z)] = key
    return runs_to_rects(cells)


def g_wedges(count, k=None):
    """放射扇形（披萨切）：整平面按方位角分扇"""
    k = k or count
    cells = {}
    for x in range(AX0, AX1 + 1):
        for z in range(AZ0, AZ1 + 1):
            a = math.atan2(z - ACZ, x - ACX) + math.pi            # 0..2pi
            w = min(int(a / (2 * math.pi) * count), count - 1)
            cells[(x, z)] = 1 + w % k
    return runs_to_rects(cells)


def g_crack(vertical, k=3, seed=11):
    """沟壑/裂缝：1 条 3 宽蜿蜒主带 + 1 条 2 宽支带（叠加在底色上）"""
    rnd = random.Random(seed)
    cells = {}
    if not vertical:
        z = rnd.randint(AZ0 + 8, AZ1 - 8)
        for x in range(AX0, AX1 + 1):
            z = max(AZ0 + 1, min(AZ1 - 1, z + rnd.choice([-1, 0, 0, 0, 1])))
            for dz in (-1, 0, 1):
                cells[(x, z + dz)] = 2
        x2 = rnd.randint(AX0 + 8, AX1 - 8)
        for z in range(AZ0, AZ1 + 1):
            x2 = max(AX0 + 1, min(AX1 - 1, x2 + rnd.choice([-1, 0, 0, 0, 1])))
            for dx in (0, 1):
                cells[(x2 + dx, z)] = 3
    else:
        x = rnd.randint(AX0 + 8, AX1 - 8)
        for z in range(AZ0, AZ1 + 1):
            x = max(AX0 + 1, min(AX1 - 1, x + rnd.choice([-1, 0, 0, 0, 1])))
            for dx in (-1, 0, 1):
                cells[(x + dx, z)] = 2
        z2 = rnd.randint(AZ0 + 8, AZ1 - 8)
        for x in range(AX0, AX1 + 1):
            z2 = max(AZ0 + 1, min(AZ1 - 1, z2 + rnd.choice([-1, 0, 0, 0, 1])))
            for dz in (0, 1):
                cells[(x, z2 + dz)] = 3
    return runs_to_rects(cells)


def g_dots(pitch, size, k=4, seed=21):
    """波点阵列：规则网格上的小方点（叠加在底色上），颜色按种子随机分配"""
    rnd = random.Random(seed)
    cells = {}
    for x in range(AX0 + 3, AX1 - size + 1, pitch):
        for z in range(AZ0 + 3, AZ1 - size + 1, pitch):
            key = rnd.randint(1, k)
            for dx in range(size):
                for dz in range(size):
                    cells[(x + dx, z + dz)] = key
    return runs_to_rects(cells)


def g_patchwork(depth, seed, k=5):
    """拼布：递归切分，精确铺满整平面（无底色露出）；颜色按种子随机分配"""
    rnd = random.Random(seed)
    rects = []

    def split(x1, z1, x2, z2, d):
        w, h = x2 - x1 + 1, z2 - z1 + 1
        if d == 0 or w * h < 64 or (w < 9 and h < 9):
            rects.append((x1, z1, x2, z2))
            return
        if w >= h and w >= 9:
            c = rnd.randint(x1 + 4, x2 - 4)
            split(x1, z1, c, z2, d - 1)
            split(c + 1, z1, x2, z2, d - 1)
        elif h >= 9:
            c = rnd.randint(z1 + 4, z2 - 4)
            split(x1, z1, x2, c, d - 1)
            split(x1, c + 1, x2, z2, d - 1)
        else:
            rects.append((x1, z1, x2, z2))

    split(AX0, AZ0, AX1, AZ1, depth)
    return [Rect(a, b, c, d, rnd.randint(1, k)) for (a, b, c, d) in rects]


def build_types():
    return [
        Type(6, "棋盘格 checkerboard", 2, [
            Variant("a", "格宽3(12x12)", g_checker(3), "棋盘格"),
            Variant("b", "格宽4(9x9)", g_checker(4), "棋盘格"),
            Variant("c", "格宽6(6x6)", g_checker(6), "棋盘格"),
        ]),
        Type(7, "细线网格 grid", 3, [
            Variant("a", "间距6", g_grid(6), "网格"),
            Variant("b", "间距4", g_grid(4), "网格"),
        ]),
        Type(8, "十字/箭头 cross-arrow", 2, [
            Variant("a", "十字4宽", g_cross(4), "十字"),
            Variant("b", "十字8宽", g_cross(8), "十字"),
            Variant("c", "箭头", g_arrow()),          # 与十字不同形状 -> 自己一族
        ]),
        Type(9, "散点噪点 confetti", 1, [], runtime="confetti"),
        Type(10, "斜条纹 45deg", 4, [
            Variant("a", "3条", g_diagonal(3), "斜条纹"),
            Variant("b", "4条", g_diagonal(4), "斜条纹"),
            Variant("c", "6条", g_diagonal(6), "斜条纹"),
        ]),
        Type(11, "随机横竖条纹 stripes", 4, [
            # 同族必须连续（难度阶段在该区间内换尺寸，方向不换）
            Variant("a", "横4条", g_stripes(4, False), "横条"),
            Variant("b", "横6条", g_stripes(6, False), "横条"),
            Variant("c", "横9条", g_stripes(9, False), "横条"),
            Variant("d", "竖4条", g_stripes(4, True), "竖条"),
            Variant("e", "竖6条", g_stripes(6, True), "竖条"),
            Variant("f", "竖9条", g_stripes(9, True), "竖条"),
        ]),
        Type(12, "同心圆环 rings", 4, [
            Variant("a", "3环", g_rings(3), "圆环"),
            Variant("b", "4环", g_rings(4), "圆环"),
            Variant("c", "6环", g_rings(6), "圆环"),
        ]),
        Type(13, "螺旋 spiral", 3, [
            Variant("a", "2圈顺", g_spiral(2, True), "顺旋"),
            Variant("b", "3圈顺", g_spiral(3, True), "顺旋"),
            Variant("c", "2圈逆", g_spiral(2, False), "逆旋"),
            Variant("d", "3圈逆", g_spiral(3, False), "逆旋"),
        ]),
        Type(14, "放射扇形 wedges", 6, [
            Variant("a", "6扇", g_wedges(6, 6), "扇形"),
            Variant("b", "8扇", g_wedges(8, 6), "扇形"),
            Variant("c", "12扇", g_wedges(12, 6), "扇形"),
        ]),
        Type(15, "沟壑/裂缝 crack", 3, [
            Variant("a", "横向", g_crack(False)),
            Variant("b", "纵向", g_crack(True)),
        ]),
        Type(16, "波点阵列 polka dots", 4, [
            Variant("a", "点距9/边长3", g_dots(9, 3), "波点"),
            Variant("b", "点距6/边长2", g_dots(6, 2), "波点"),
        ]),
        Type(17, "随机矩形拼块 patchwork", 5, [
            Variant("a", "切分A", g_patchwork(5, 1)),
            Variant("b", "切分B", g_patchwork(5, 2)),
            Variant("c", "切分C", g_patchwork(5, 3)),
        ]),
    ]


def has_multi_family(t: Type):
    """变体表里是否存在多个形状族（只有一个族时，整表重掷 == 换尺寸，没必要再来一条）"""
    return len({v.group for v in t.variants}) > 1


def group_ranges(t: Type):
    """把同族（group 相同，且连续排列）的变体下标归并成区间，只返回成员 >1 的区间"""
    out, i = [], 0
    while i < len(t.variants):
        j = i
        while j + 1 < len(t.variants) and t.variants[j + 1].group == t.variants[i].group:
            j += 1
        if j > i:
            out.append((i + 1, j + 1))
        i = j + 1
    return out


# ---------------------------------------------------------------- 生成 mcfunction
def build_helpers():
    pick = list(HEADER) + [
        f"# 取一次随机调色板颜色 -> storage minecraft:temp.block（方块名）| {TOOL_REL} 生成",
        "function color/rancolor",
        "execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock",
    ]
    ensure = list(HEADER) + [
        f"# 用 $(c1) 把 36x36 内所有 air 补上（判定前整平面保证的兜底）| {TOOL_REL} 生成",
        "# 第一次调用发生在清空之后，所以它同时也是「底色铺满」那一步",
        f"$fill {AX0} {Y} {AZ0} {AX1} {Y} {AZ1} $(c1) replace air",
    ]
    # 给 5_init（完整性依赖地图 x36..75 源行）用的补洞：它没有 c1，用当前已加载的 $(block)
    patch = list(HEADER) + [
        f"# 用当前已加载的 $(block) 把 36x36 内所有 air 补上 | {TOOL_REL} 生成",
        "# 供 5_init 使用（它的地板来自世界里的渐变源行，若源行有缺格会留下 air）",
        f"$fill {AX0} {Y} {AZ0} {AX1} {Y} {AZ1} $(block) replace air",
    ]
    out = {"pick": pick, "ensure_full": ensure, "patch_holes": patch}
    # 散点印章：先 rancolor 取一个新随机色，再按 w×w 从色卡位逐格盖章
    # 生长方向与 2_place 一致（向 -x、+z），落点安全范围见 9_init 里的注释
    for w in range(1, DOT_MAXW + 1):
        lines = list(HEADER) + [
            f"# 散点印章 {w}x{w}：取一个新随机色后盖章 | {TOOL_REL} 生成",
            "function color/rancolor",
        ]
        for dx in range(0, -w, -1):
            for dz in range(0, w):
                ox = "~" if dx == 0 else f"~{dx}"
                oz = "~" if dz == 0 else f"~{dz}"
                lines.append(f"clone -52 35 61 -52 35 61 {ox} ~ {oz} strict")
        out[f"stamp{w}"] = lines
    return out


def build_reroll(types):
    """每回合只掷一次的随机参数：形状（网格宽高/条数/圈数/扇数/散点大小）在同一回合内不变。
    只重掷颜色由各 N_init 每秒自己完成；散点的位置也每秒重掷。"""
    L = list(HEADER)
    L.append(f"# 每回合只掷一次的随机参数 | {TOOL_REL} 生成，勿手改")
    L.append("# 调用点：summon（正式开局，每回合一次）与 color/test（调试）")
    L.append("# 各类型的 N_init 只读这些值，不自己重掷 —— 正常回合内形状固定")
    L.append(f"# 难度阶段改由轮数计数器 color.round 判定（N_init 里自带）：>= {ROUND_SIZE} 同族换尺寸、>= {ROUND_SHAPE} 形状可变")
    L.append("# 1..2：方块宽度（原有的每回合参数）")
    L.append("execute if score color.rantype board matches 1..2 store result score color.ran.blockwidth "
             "board run random value 1..4")
    L.append("# 5：渐变源行这里只是回合起始值；它不参与形状锁定，colorstartran 每次生成都会再重掷一次")
    L.append("execute if score color.rantype board matches 5 store result storage minecraft:temp "
             "random_value int 1 run random value 2..18")
    L.append("# 6..17：图案变体（网格宽高/条数/圈数/扇数/布局）")
    for t in types:
        if t.runtime == "confetti":
            # 散点：位置每秒重掷，大小每回合固定（这里就是那个大小）
            L.append(f"# {t.tid} 散点：印章大小（位置每秒重掷，大小本回合固定）")
            L.append(f"execute if score color.rantype board matches {t.tid} store result score "
                     f"color.ran.blockwidth board run random value 2..{DOT_MAXW}")
            continue
        L.append(f"execute if score color.rantype board matches {t.tid} store result score "
                 f"{V_SCORE} board run random value 1..{len(t.variants)}")
    return L


def build_init(t: Type):
    L = list(HEADER)
    if t.variants:
        L.append(f"# {t.tid}: {t.name} | " + " ".join(f"{v.suffix}={v.desc}" for v in t.variants))
    else:
        L.append(f"# {t.tid}: {t.name} | 位置每秒重掷，大小每回合固定（{DOT_COUNT} 块）")
    L.append(f"# 由 {TOOL_REL} 生成，勿手改")
    L.append("# R0: 判定前必须是完整平面 —— 先铺满底色，图案只覆盖不挖空，收尾再 ensure_full 兜底")
    if t.variants:
        L.append(f"# 形状（变体）由 reroll 每回合掷一次，同一回合内不变；只有颜色每秒重掷")
        L.append(f"# 难度阶段：轮数 color.round >= {ROUND_SIZE} 允许同族换尺寸；"
                 f">= {ROUND_SHAPE} 允许形状变化")
    L.append(f"fill {CX0} {Y} {CZ0} {CX1} {Y} {CZ1} air")
    L.append("")
    L.append("function color/ran_fill/pick")
    L.append("data modify storage minecraft:temp c1 set from storage minecraft:temp block")
    L.append("# 此刻刚清空，replace air 等价于把底色铺满整个 36x36")
    L.append("function color/ran_fill/ensure_full with storage minecraft:temp")
    for k in range(2, t.k + 1):
        L.append("")
        L.append("function color/ran_fill/pick")
        L.append(f"data modify storage minecraft:temp c{k} set from storage minecraft:temp block")
    L.append("")

    if t.runtime == "confetti":
        L.append(f"# 散点：{DOT_COUNT} 块；位置由 spreadplayers 每秒重掷（可变），"
                 f"大小读 color.ran.blockwidth（每回合固定，不可变）")
        L.append(f"# range {DOT_RANGE}：印章沿 -x/+z 生长（与 2_place 同向），"
                 f"最大边长 {DOT_MAXW} 时落点与色块仍在可玩区内")
        for _ in range(DOT_COUNT):
            L.append(f'summon marker 13.00 18 95.00 {{Tags:["{DOT_TAG}"]}}')
        L.append(f"spreadplayers {ACX:.2f} {ACZ:.2f} 0 {DOT_RANGE} under 20 false @e[tag={DOT_TAG}]")
        L.append(f"# 难度阶段：轮数 >= {ROUND_SIZE} 后每回合内也重掷印章大小（形状=散点方块，天然锁定）")
        L.append(f"execute if score color.round tick matches {ROUND_SIZE}.. store result score "
                 f"color.ran.blockwidth board run random value 2..{DOT_MAXW}")
        for w in range(1, DOT_MAXW + 1):
            L.append(f"execute if score color.ran.blockwidth board matches {w} "
                     f"as @e[tag={DOT_TAG}] at @s positioned ~ ~-1 ~ run "
                     f"function minecraft:color/ran_fill/stamp{w}")
        L.append(f'kill @e[tag={DOT_TAG}]')
    else:
        L.append("# 变体只做范围兜底（正常由 reroll 掷出），保证任何入口下都有图案")
        L.append(f"execute unless score {V_SCORE} board matches 1..{len(t.variants)} run "
                 f"scoreboard players set {V_SCORE} board 1")
        groups = group_ranges(t)
        if groups:
            L.append(f"# 难度阶段①轮数 >= {ROUND_SIZE}：形状锁定，只允许在同族变体内换尺寸")
            for lo, hi in groups:
                L.append(f"execute if score color.round tick matches {ROUND_SIZE}..{ROUND_SHAPE - 1} "
                         f"if score {V_SCORE} board matches {lo}..{hi} "
                         f"store result score {V_SCORE} board run random value {lo}..{hi}")
        if has_multi_family(t):
            L.append(f"# 难度阶段②轮数 >= {ROUND_SHAPE}：形状也允许变化（整表重掷）")
            L.append(f"execute if score color.round tick matches {ROUND_SHAPE}.. "
                     f"store result score {V_SCORE} board run random value 1..{len(t.variants)}")
        for i, v in enumerate(t.variants, 1):
            L.append(f"execute if score {V_SCORE} board matches {i} run "
                     f"function minecraft:color/ran_fill/{t.tid}_{v.suffix} with storage minecraft:temp")

    L.append("")
    L.append("# 兜底：任何残留 air 都补成底色（正常情况下是空操作）")
    L.append("function color/ran_fill/ensure_full with storage minecraft:temp")
    L.append("")
    L += TAIL
    return L


def build_variant(t: Type, v: Variant):
    L = [f"# {t.tid}_{v.suffix}: {t.name} · {v.desc}（{len(v.rects)} 个矩形）| {TOOL_REL} 生成，勿手改"]
    for r in v.rects:
        L.append(f"$fill {r.x1} {Y} {r.z1} {r.x2} {Y} {r.z2} $(c{r.c})")
    return L


# ---------------------------------------------------------------- 指令数统计
def body_cost(fname, files, memo):
    key = key_of(fname)
    if key in memo:
        return memo[key]
    if key in EXTERNAL and key not in files:
        memo[key] = EXTERNAL[key]
        return EXTERNAL[key]
    if key not in files:
        raise KeyError(f"未生成的函数引用: {fname} -> {key}")
    memo[key] = 0  # 环保护
    total = 0
    for ln in cmds(files[key]):
        total += 1
        m = CALL_RE.search(ln)
        if m:
            total += body_cost(m.group(1), files, memo)
    memo[key] = total
    return total


def confetti_cost(w, files):
    """散点：init 里 4 条按大小分派的盖章行，只有与 w 相符的那条会真的跑"""
    memo, total = {}, 0
    for ln in cmds(files["9_init"]):
        total += 1
        m = CALL_RE.search(ln)
        if not m:
            continue
        key = key_of(m.group(1))
        if DOT_TAG in ln:
            if key == f"stamp{w}":
                total += DOT_COUNT * body_cost(key, files, memo)
        else:
            total += body_cost(key, files, memo)
    return total


def type_cost(t: Type, v: Variant, files):
    """执行一次 N_init（命中变体 v）会跑多少条指令"""
    memo, total = {}, 0
    self_key = f"{t.tid}_{v.suffix}"
    for ln in cmds(files[f"{t.tid}_init"]):
        total += 1
        m = CALL_RE.search(ln)
        if not m:
            continue
        key = key_of(m.group(1))
        if key.startswith(f"{t.tid}_"):
            if key == self_key:
                total += body_cost(key, files, memo)
        else:
            total += body_cost(key, files, memo)
    return total


# ---------------------------------------------------------------- 断言
def check(t: Type, files, fails):
    # init 里除首次清空外不得出现挖空语句
    for i, ln in enumerate(cmds(files[f"{t.tid}_init"])):
        if " air" in ln and "fill" in ln and f"{CX0} {Y} {CZ0}" not in ln:
            fails.append(f"{t.tid}_init: 第 {i+1} 条出现额外挖空语句: {ln}")

    if t.runtime == "confetti":
        # 落点由 spreadplayers 决定，无法逐格模拟 -> 用边界推演
        # 印章沿 -x/+z 生长（与 2_place 同向），所以需要 x_min-(w-1) >= AX0 且 z_max+(w-1) <= AZ1
        ax_min = math.floor(ACX - DOT_RANGE) - (DOT_MAXW - 1)
        az_max = math.ceil(ACZ + DOT_RANGE) + (DOT_MAXW - 1)
        if ax_min < AX0 or az_max > AZ1:
            fails.append(f"{t.tid}: 散点边界 {ax_min}..{az_max} 越出可玩区（x {AX0}..{AX1} / z {AZ0}..{AZ1}）")
        if ax_min < CX0 or az_max > CZ1:
            fails.append(f"{t.tid}: 散点边界越出清空区")
        for w in range(1, DOT_MAXW + 1):
            fn = f"stamp{w}"
            if fn not in files:
                fails.append(f"{t.tid}: 缺少印章文件 {fn}")
                continue
            n = len([ln for ln in files[fn] if ln.startswith("clone")])
            if n != w * w:
                fails.append(f"{t.tid}: {fn} 的 clone 行数 {n} != {w*w}")
        return

    for v in t.variants:
        used = set()
        for ln in files[f"{t.tid}_{v.suffix}"]:
            used |= {int(n) for n in MACRO_RE.findall(ln)}
        if not used:
            fails.append(f"{t.tid}_{v.suffix}: 宏文件没有任何 $(cN) 引用")
        if max(used) > t.k:
            fails.append(f"{t.tid}_{v.suffix}: 引用了 $(c{max(used)}) 但 init 只设置 c1..c{t.k}")
        for r in v.rects:
            if min(r.x1, r.x2) < CX0 or max(r.x1, r.x2) > CX1 or min(r.z1, r.z2) < CZ0 or max(r.z1, r.z2) > CZ1:
                fails.append(f"{t.tid}_{v.suffix}: 矩形越出清空区 {r!r}")
            if r.x1 < AX0 or r.x2 > AX1 or r.z1 < AZ0 or r.z2 > AZ1:
                fails.append(f"{t.tid}_{v.suffix}: 矩形越出可玩区 {r!r}")
        # 逐格模拟：底色铺满 -> 图案覆盖 -> ensure_full，断言无 air
        grid = {(x, z): 1 for x in range(AX0, AX1 + 1) for z in range(AZ0, AZ1 + 1)}
        for r in v.rects:
            for x in range(r.x1, r.x2 + 1):
                for z in range(r.z1, r.z2 + 1):
                    grid[(x, z)] = r.c
        air = [p for p, c in grid.items() if c is None]
        if air:
            fails.append(f"{t.tid}_{v.suffix}: 有洞 air {len(air)} 格")


# ---------------------------------------------------------------- 报告
def report(types, files):
    print("=" * 108)
    print("每类型 / 每变体的开销（1 次生成 = state=2 期间每秒 1 次，1 回合共 6 次）")
    print("=" * 108)
    print(f"{'类型':<4}{'名称':<26}{'变体':<22}{'矩形':>5}{'取色K':>5}{'指令/次':>9}{'方块写入':>10}{'图案占比':>10}")
    print("-" * 108)
    worst = 0
    rows = []
    for t in types:
        if t.runtime == "confetti":
            # 位置每秒重掷 => 没有固定矩形；按每回合固定的大小分 1..DOT_MAXW 档列出
            for w in range(1, DOT_MAXW + 1):
                cost = confetti_cost(w, files)
                writes = ARENA_CELLS + DOT_COUNT * w * w
                pat = DOT_COUNT * w * w
                worst = max(worst, cost)
                rows.append((cost, writes, pat))
                print(f"{t.tid:<4}{t.name:<26}{f'点大小{w}x{w}':<22}{'-':>5}{t.k:>5}"
                      f"{cost:>9}{writes:>10}{100*pat/ARENA_CELLS:>9.0f}%")
            continue
        for v in t.variants:
            cost = type_cost(t, v, files)
            rects, desc = v.rects, f"{v.suffix} {v.desc}"
            writes = ARENA_CELLS + sum(r.area for r in v.rects)
            cells = set()
            for r in v.rects:
                for x in range(r.x1, r.x2 + 1):
                    for z in range(r.z1, r.z2 + 1):
                        cells.add((x, z))
            pat = len(cells)
            worst = max(worst, cost)
            rows.append((cost, writes, pat))
            print(f"{t.tid:<4}{t.name:<26}{desc:<22}{len(rects):>5}{t.k:>5}"
                  f"{cost:>9}{writes:>10}{100*pat/ARENA_CELLS:>9.0f}%")
    print("-" * 108)
    print(f"最坏一次生成 = {worst} 条指令；现有基准：type3 ~1,016 / type4 ~1,108 / type1 ~5,175-10,980")
    print("对照：池子 1..5 时平均每次生成 ~3,183 条；扩到 1..17 后 ~1,165 条（最重类型出现率 40% -> 12%）")
    print(f"最大方块写入 = {max(r[1] for r in rows)} 块/次（type3 为 8,436）")


# ---------------------------------------------------------------- 主流程
def write_files(files):
    RANFILL.mkdir(parents=True, exist_ok=True)
    for fname, lines in files.items():
        p = RANFILL / f"{fname}.mcfunction"
        with open(p, "w", encoding="utf-8", newline="\r\n") as fh:
            fh.write("\n".join(lines) + "\n")
        print(f"  写入 {p.relative_to(REPO)}  ({len(lines)} 行)")


def verify_files(files):
    bad = []
    for fname, lines in files.items():
        p = RANFILL / f"{fname}.mcfunction"
        want = ("\n".join(lines) + "\n").replace("\n", "\r\n").encode("utf-8")
        if not p.exists():
            bad.append(f"缺失 {p.name}")
        elif p.read_bytes() != want:
            bad.append(f"内容与生成结果不一致 {p.name}")
    return bad


def check_refs(extra=None):
    """把 color/ 目录下所有 function 引用解析到磁盘（跨所有数据包），确认存在。
    extra: 本次即将生成、可能尚未落盘的函数路径集合（如 color/ran_fill/reroll）"""
    extra = extra or set()
    roots = {}
    for pk in (REPO / "datapacks").iterdir():
        d = pk / "data"
        if not d.is_dir():
            continue
        for ns in d.iterdir():
            fr = ns / "function"
            if fr.is_dir():
                roots.setdefault(ns.name, []).append(fr)
    bad = []
    cdir = REPO / "datapacks/map_all/data/minecraft/function/color"
    for p in sorted(cdir.rglob("*.mcfunction")):
        for i, ln in enumerate(p.read_text(encoding="utf-8").splitlines(), 1):
            s = ln.strip()
            if s.startswith("#"):
                continue
            m = CALL_RE.search(ln)
            if not m:
                continue
            name = m.group(1)
            ns, _, path = name.partition(":")
            if not path:
                ns, path = "minecraft", ns
            if ns == "minecraft" and f"color/{path}" in extra:
                continue
            if ns not in roots or not any((r / f"{path}.mcfunction").exists() for r in roots[ns]):
                bad.append(f"{p.name}:{i} -> {name}")
    return bad


def clean_stale(files):
    """找出本工具负责命名空间下（6..17_*）已不再生成的旧文件"""
    keep = {f"{n}.mcfunction" for n in files}
    pat = re.compile(r"^(?:[6-9]|1[0-7])_[a-z0-9_]*\.mcfunction$")
    return [p for p in sorted(RANFILL.iterdir()) if pat.match(p.name) and p.name not in keep]


def main():
    dry = "--dry-run" in sys.argv
    verify = "--verify" in sys.argv
    types = build_types()

    files = build_helpers()
    files["reroll"] = build_reroll(types)
    for t in types:
        files[f"{t.tid}_init"] = build_init(t)
        for v in t.variants:
            files[f"{t.tid}_{v.suffix}"] = build_variant(t, v)

    fails = []
    for t in types:
        check(t, files, fails)

    report(types, files)

    if fails:
        print("\n断言失败：")
        for f in fails:
            print("  X", f)
        return 1
    print("\n断言通过：坐标在界内 / 可玩区完整覆盖无 air / 宏键引用正确 / 无额外挖空语句")

    if verify:
        bad = verify_files(files)
        if bad:
            print("\n磁盘校验失败：")
            for b in bad:
                print("  X", b)
            return 1
        print(f"磁盘校验通过：{len(files)} 个文件与生成结果逐字节一致")

    if dry or verify:
        refs = check_refs({f"color/ran_fill/{n}" for n in files})
        if refs:
            print("\n函数引用校验失败：")
            for r in refs:
                print("  X", r)
            return 1
        print("函数引用校验通过：color/ 目录下所有 function 引用都能在数据包里找到")
        stale = clean_stale(files)
        if stale:
            print(f"\n发现 {len(stale)} 个已弃用的旧文件（未删除）：" +
                  "".join(f"\n  - {p.name}" for p in stale))
        print("(--dry-run，未写盘)" if dry else "(--verify，未写盘)")
        return 0

    print()
    write_files(files)
    print(f"\n共写入 {len(files)} 个文件")

    refs = check_refs()
    if refs:
        print("\n函数引用校验失败：")
        for r in refs:
            print("  X", r)
        return 1
    print("函数引用校验通过：color/ 目录下所有 function 引用都能在数据包里找到")

    stale = clean_stale(files)
    if stale:
        print(f"\n清理 {len(stale)} 个已弃用的旧文件：")
        for p in stale:
            p.unlink()
            print("  删除", p.name)
    return 0


if __name__ == "__main__":
    sys.exit(main())
