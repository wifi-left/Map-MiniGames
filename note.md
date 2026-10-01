
# todo
- [ ] 新游戏：死亡速度比拼
- [ ] 新游戏：穿越森林（第一个到达某处）允许破坏方块

# 无递归raycast
> By 伊桑桑桑桑桑

raycast:
```mcfunction
# uuid("62b8618f-a8d1-4d04-ab9b-1aa77123c442")
execute unless loaded ~ ~ ~ run return 0
summon marker ~ ~ ~ {UUID:[I;1656250767,-1462678268,-1415898457,1898169410]}
execute as 62b8618f-a8d1-4d04-ab9b-1aa77123c442 run function raycast/1
```

raycast/1:
```mcfunction
rotate @s ~ ~
function raycast/2
kill @s
```

raycast/2:
```mcfunction
execute \
    as @e[tag=!raycast.ignore,type=!#你要忽略的实体,distance=..最远距离,sort=nearest] positioned ^ ^ ^最远距离 positioned as @s[distance=..最远距离+0.3] \
    positioned ~ ~ ~2048 facing entity @s eyes positioned ^ ^ ^1024 positioned ~ ~ ~-1024 \
    rotated as 62b8618f-a8d1-4d04-ab9b-1aa77123c442 positioned ^ ^ ^1024 facing entity 62b8618f-a8d1-4d04-ab9b-1aa77123c442 feet positioned ^ ^ ^1024 \
    facing entity @s feet rotated ~ 0 positioned ^ ^ ^0.26 \
    positioned ~-0.01 ~-0.01 ~-0.01 as @s[dx=0,dy=0,dz=0] positioned ~-0.98 ~-0.98 ~-0.98 at @s[dx=0,dy=0,dz=0] \
    run return run say 被你发现了
```

使用方法：
```mcfunction
# 执行者为玩家
tag @s add raycast.ignore
execute anchored eyes positioned ^ ^ ^ run function raycast
tag @s remove raycast.ignore
```

# 通用启动游戏检测
```mcfunction
## 检测是否能启动游戏
scoreboard players set tmp.canplay board 0
execute store result score tmp.canplay board run function admin/play/canplay
execute if score tmp.canplay board matches 0 run tellraw @s ["\u00a7c游戏仅管理员可以开始。\n\u00a77如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canplay board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canplay board matches 0 run return 0
```

# 通用设置检测
```mcfunction
## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["\u00a7c游戏仅管理员可以设定游戏选项。\n\u00a77如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0
```

# 通用分队 API

在 `utils` 包里：`utils:team/distribute`（普通分队）、`utils:team/distribute_cmd`（自定义命令分队）。
把一批玩家**尽量平均**地分到若干队伍，**队伍数量 = 列表长度**。默认**考虑组队**：同一个组队尽量分到同一队，
只有当整个组队放不下（放进去会让人数不平均）时才把它拆开随机分。

```mcfunction
## 普通分队：列表是 MC 队伍名（第 3 个参数 after 是分配完成后要执行的命令，作为被分配的玩家执行；不需要就写 ""）
/function utils:team/distribute {players:"@a[tag=game.wait]",teams:["teama","teamb"],after:""}

## 自定义命令分队：列表是“每个队伍对应的命令”，分到第 i 队的每个玩家都会执行第 i 条命令
/function utils:team/distribute_cmd {players:"@a[tag=game.wait]",cmds:["function game/join/a","function game/join/b"]}
```

参数说明：

- `players`：原始玩家选择器，比如 `@a[tag=game.wait]`、`@a[team=lobby]`。
- `teams` / `cmds`：列表，长度就是队伍数量。`teams` 里写 MC 队伍名（队伍不存在时 `team join` 会自动创建）；
  `cmds` 里写完整命令（不要留空串，空命令会在执行时报解析错误）。
- `after`（只有普通分队有）：分配后执行的命令，**以每个被分配的玩家为执行者**执行，所以命令里可以正常用 `@s`，
  例如 `"tp @s 0 100 0"` 或 `"function game/after_join"`；不需要就写 `""`。三个参数都要写全。
- `cmds` 里的命令同样是**以被分配的玩家为执行者**运行，所以 `["say 我加入了 A 队"]` 会每人说一次；
  想每队只说一次就写成 `"execute as @a[tag=队伍标签] run say ..."` 之类的形式。

分配规则与保证：

- 每队人数上限 `cap = 向上取整(候选人数 / 队伍数)`，按**开始分配前**的人数算一次，中途不重算。
- 每一批人都分进“当前人数最少的一队”，且**整队人数不超过这一队的空位**，所以同队优先不会让任何一队超出 `cap`，
  人数始终尽量均匀；例如 12 人 4 队 + 一个 3 人组队 → `3/3/3/3`（组队同队）；6 人 4 队 + 一个 3 人组队 →
  `cap=2` 放不下 → 拆开随机分 → `2/2/1/1`。
- 组队判定复用 `minecraft:team/api/party_pick`（`map_all` 的组队系统）。如果地图里没有这套组队系统，
  调用会失败但不影响流程：会自动退化成“每次随机分一个人”。
- 分配期间用到的内部标签/临时分数：`utils.team.pool`、`team.batch`、`tmp.utils.*`、`storage minecraft:utils_tmp team`。
  跑完会自行清理；**同一 tick 内不要并发调用多次**（会共用这些临时数据）。

实现文件（`utils` 包，命名空间 `utils`）：

- `team/distribute.mcfunction` —— 普通分队入口（写参数包后交给 lib/start）
- `team/distribute_cmd.mcfunction` —— 自定义命令分队入口
- `team/lib/start.mcfunction` —— 校验参数、收候选池、算每队人数上限、清空人数记录
- `team/lib/step.mcfunction` —— 主循环：找人数最少的一队 → 选一批人 → 执行该队动作 → 继续
- `team/lib/min_i.mcfunction` —— 宏：比较第 i 队人数，记录最少的一队
- `team/lib/apply_i.mcfunction` —— 宏：把这一批人按第 i 队处理（含人数统计与 after）
- `team/lib/apply_team.mcfunction` —— 宏：`team join <队伍名> <这一批人>`
- `team/lib/run_cmd_on_batch.mcfunction` —— 宏：让这一批人每人执行一条命令

## 已接入分队 API 的游戏（组队优先）

下面 5 个游戏的“分队”已经全部改成调用 `utils:team/distribute_cmd`，所以同一个组队会尽量被分到同一队
（整队放不下时按上面的规则拆开随机分，并给被拆的人一句提示）。每个游戏都有一组
`<游戏>/team/<队>.mcfunction`，里面只做“进这一队”这一件事（`team join <MC队伍>` 或 `tag @s add <标签>`）。

| 游戏 | 分队函数 | 分队小函数 | 分到哪 |
|---|---|---|---|
| 战桥 duel | `duel/spr.mcfunction` | `duel/team/{blue,yellow}` | MC 队伍 `play.duel.blue/yellow` |
| Battle Box | `battle/spr.mcfunction` | `battle/team/{r,b}` | MC 队伍 `play.battle.r/b` |
| 绵羊突击队 | `sheepwars/random_team.mcfunction` | `sheepwars/team/{a,b}` | MC 队伍 `play.sheepwars.a/b` |
| TNTWARS | `tntwars/randomteam.mcfunction` | `tntwars/team/{a,b}` | 标签 `tntwars.a/b`（全体都在同一 MC 队伍 `play.tntwars`） |
| 足球 / 躲避球 ballgame | `ballgame/actions/football/random_team.mcfunction` | `ballgame/team/{a,b}` | 标签 `ball.teama/b` |

- 这里统一用 `distribute_cmd`（命令列表模式）而不是 `distribute`（队伍名模式），因为它能同时覆盖
  “MC 队伍”和“标签”两种分法：`cmds` 里每一项都是**以被分配的玩家为执行者**运行的命令，所以写
  `function <游戏>/team/<队>`，在那个小函数里再用 `@s` 干活（传送、发装备、提示）。战桥的 `duel/item`
  就放在小队函数里，并且保持原来的 `execute at @s` 位置语义。
- **分队是整批一次分完**：调用点必须是「一次 `function <分队函数>`」，不能写成
  `execute as @a[...] run function <分队函数>`（那会把全体重分 N 遍）。原来的 `duel/spr`、`battle/spr`、
  `tntwars/randomteam` 都是“每人调一次、每次分一个人”的写法，改接线时必须同时改调用点。
- Battle Box 在小游戏派对模式里遇到奇数人数时，`battle/teststart_total.mcfunction` 会走
  `battle/bench_pick.mcfunction`：**优先挑没有组队的“散人”**去旁观（避免把某个组队拆散），
  全员都在组队里时才退回随机挑一个；独立开局的 `battle/teststart_2.mcfunction` 仍是“奇数就拒绝开局”。
- 原来的手写交替计数器（`duel.ranteam`、`battle.ranteam`、`sheep.randomteam`、`rand`、`ballgame.team`）
  已全部删除，不再被任何文件读写。
- 自检：`python debug/scripts/team_split_check.py datapacks`
  （检查接线是否只有一次调用、队名是否与该游戏其它文件一致、旧计数器是否清干净）。
- 组队门禁 `minecraft:team/api/can_join` 这 5 个游戏的 join 里原本就有，这次没动。

## 给新游戏接线（3 步）

1. 新增 `<游戏>/team/<队>.mcfunction`：`team join <MC队伍> @s` 或 `tag @s add <标签>`
   （要提示就顺手在里面 `tellraw @s`；要发装备就 `execute at @s run function ...`）。
2. 把该游戏的分队函数改成一次调用（`players` 用该游戏真正的候选池选择器，队伍数量 = `cmds` 列表长度）：
   ```mcfunction
   function utils:team/distribute_cmd {players:"@a[team=<游戏>.wait,gamemode=adventure]",cmds:["function <游戏>/team/a","function <游戏>/team/b"]}
   ```
3. 调用点改成「整批一次」，并删掉旧的手写随机/交替计数器。
   **限制**：这套 API 用全局临时数据（`utils.team.pool`、`team.batch`、`tmp.utils.*`、`storage minecraft:utils_tmp team`），
   **同一 tick 内不能并发调用多次** —— 各游戏各自开局一次是安全的。

# T氏的话（不要相信T氏的话）任务表

游戏的“任务”由 storage `minecraft:t_says` 里的表驱动（`/reload` 时由 `map_game_3rd` 的
`t_says/tasks/setup.mcfunction` 重建，由 `map_main` 的 `setup` 调用 `t_says/setup` 注册计分项）。

- `tasks.<组名>` = `[{id,msg,time,start,judge,opts?}, ...]`
  - `id` 场景编号（判定函数与响应式动作靠它分支，必须唯一）
  - `msg` 任务文案（JSON 文本组件列表，`show_msg` 用 `interpret:true` 显示）
  - `time` 判定时限（秒）
  - `start` 场景搭建函数（没有搭建就写 `minecraft:t_says/scene/start/none`）
  - `judge` 每 tick 轮询判定函数（响应式判定的写 `minecraft:t_says/scene/judging/none`）
  - `opts:{timeout:"all"}` 否定句场景：时限到了“什么都没做”的玩家算完成（如“别跳”）
- `groups` = 抽取用的组表。抽取是**分组均衡**：先等概率抽组，再在组内等概率抽行。
  `groups` 里把组名重复写多份就能给该组加权（例如让“动作”类多出现几次）。
  **改动 `groups` 长度后，必须同步改 `t_says/scene/random_scene.mcfunction` 里抽组的 `random value 1..N`。**

分组与 id 段位：

| 组 | 内容 | id |
|---|---|---|
| action | 跳/蹲/走/跑/拥抱/躲避箭雨/跑酷 | 1..9、20、23 |
| craft | 合成 | 10..19、30..35 |
| wear | 穿戴（胸甲 / 头盔） | -10..-4、40..43 |
| hand | 主手 / 副手持有 | 50..52 |
| use | 使用物品（扔 / 射 / 钓 / 吃 / 喝 / 放） | 60..67 |
| block | 站在指定方块上 | -20..-11、70..77 |
| fight | 被箭雨射中 / 击杀木乃伊 / 远离所有玩家 | 80..82 |

判定靠哪些东西：

- **响应式统计计分项**：`t_says.egg/snowball/bow/rod/bread/potion/wool`（`minecraft.used:<物品>`）
  与 `t_says.kills`（`minecraft.custom:minecraft.mob_kills`）。
  `tick.mcfunction` 里“先派发、后统一 reset @a”，所以 `1..` 就表示“本 tick 做了这件事”。
- **使用类任务（id 60..67）的规则**：开局把 8 种物品**一次性全发**（`scene/special/give_use`），
  **用对当前任务要的物品 = 完成**；**用了别的物品 = 走 `give_judge/failed`（"做了与台词相反的事"）**，
  再由"T氏说"反过来判成败——和 `scene/judging/wear_item` 里"穿错胸甲"、`stand_on_block` 里"站错颜色"
  完全同一种写法。于是没有 T 前缀时用错就是失败，有"T氏说"时用错反而算完成（那句话的意思被反过来了）。
  面包必须带 `food={...,can_always_eat:true}`，否则玩家不饿就吃不下、任务做不完。
  每件物品的判定在 `action/use_*.mcfunction`；`use_egg` 用同一行兜底覆盖了 id 67「别扔鸡蛋」。
- **击杀木乃伊（id 81）**：开局**每名玩家各一只**（`scene/special/spawn_husk`，都放在竞技场 terracotta 平台上），
  判定用 `t_says.kills`、按玩家归属，所以“谁先打死谁拿第一档金币”（这是原来共用一只时做不到的）。
  `scene/judging/kill_target` 每 tick 只做两件事：把掉下平台的靶子清掉，并保证场上靶子数不少于未判定玩家数
  （每 tick 最多补一只），避免“自己的靶子被别人打掉”后卡死。
- **每 tick 轮询**：脚下方块 `if block ~ ~-1 ~`、背包 `if items entity @s container.*`、
  装备槽 `armor.*`、手持 `weapon.mainhand/offhand`、附近实体、距离。
- **advancement**：`t_says/player_was_hit_arrow`（id 20 与 id 80 共用，reward 函数里按场景分支）。
- 常驻 `resistance 25` 会让伤害类统计完全不动，所以 id 80“被箭雨射中”期间
  `second.mcfunction` 停发抗性、`tick.mcfunction` 改发低等级抗性 + 吸收：
  箭矢才会真的造成伤害（否则命中判定触发不了），同时不会把人射死。
  id 80 的箭雨由 `scene/judging/arrow_rain.mcfunction` 每 tick 落箭（和 id 20“躲避箭雨”同一套思路），
  且只对“还没被判定”的玩家落箭，所以每人最多挨一两支。

新增任务时：

1. 在 `t_says/tasks/setup.mcfunction` 对应组里 `append` 一行。
2. 需要新场地/发物品就加 `t_says/scene/start/<x>.mcfunction`，需要轮询判定就加 `t_says/scene/judging/<x>.mcfunction`，
   响应式判定就在 `t_says/action/<x>.mcfunction` 里按 id 分支（`tick` 里挂派发）。
3. 新场地用到的方块**必须加进 `#t_says/scene_blocks` 标签**（`reset` 只按这个标签清场）。
4. 跑 `debug/scripts/t_says_check.py datapacks` 自检（表 ↔ 引用 ↔ 宏调用的一致性）。

调试：`/function minecraft:t_says/debug/force_scene {id:60}` 可以直接加载指定任务（走正常播报 → 判定流程，
会把本局上限设成 99 并把大厅玩家拉进竞技场）。

# 随机跑酷：记录点与道具

游戏包 `map_game_2nd`，目录 `random_parkour/`。生成器由 `map/init_move` 启动，`map/next_move` 每 5 tick 铺一块。

## 记录点（金块平台）

- **生成**：`random_parkour.step` 从 150~300 倒数（每段 1 块）。`init_move` 里
  `cpstep = step - random(40..60)`；`place_main` 顶部判断 `step <= cpstep` 就改走
  `map/place/place_checkpoint`（3×3 羊毛 + 中心金块 + 四周楼梯），并重掷下一个 `cpstep`。
  所以记录点之间相隔 40~60 段。
- **越界护栏**：平台 + 楼梯外圈是 x±2 / z±2。`place_main` 里只在
  `x matches 16..100` 且 `z matches 214..244` 时才铺，否则顺延到下一段 —— 这样保证生成物
  一定落在 `reset_m` 的清场区（x13..104 / y-62..9 / z211..247）内；区域外的方块每轮都不会被清掉。
  `debug/scripts/random_parkour_check.py` 会把这个包含关系算一遍。
- **记录**：`tick.mcfunction` 里 `if block ~ ~-1 ~ gold_block` → `checkpoint/setpoint`。
  记录点数据**直接复用大厅跑酷的 `park.x` / `park.y` / `park.z`**（3 个 dummy 计分项，holder = 玩家，
  存"玩家自己踩上去那一刻的坐标"），没有新增任何计分项。与已记录的记录点重合时只显示 actionbar
  `§c[记录点] 你已经在这个记录点了`（不刷屏），不同才走 `checkpoint/plset` 写入并提示。
- **返回**：`failed.mcfunction` 把 `park.x/y/z` 写进 `storage minecraft:temp tp_pos`，再用
  `function utils:tp with storage minecraft:temp tp_pos`（宏：`$tp @s $(x) $(y) $(z)`）。
  没有记录点（`unless score @s park.x matches -10000000..`）则回起点 `11 -61 229`。
  **除了踩 magma，没有任何主动返回手段**（没有接大厅跑酷的 `/trigger parkour set 1`）。
- **重置**：`join`（进游戏）与 `resetover`（每轮开始）都会 `reset` 玩家的 `park.x/y/z`。
  `park.*` 是与大厅跑酷 4 个游戏共用的计分项，不重置会把别的游戏的坐标带进来。
- 记录的是"玩家自己的坐标"（取整），落点安全靠 3×3 平台兜住 —— 换成 1×1 就会踩空。

## 道具（随机掉落池）

`loot_table/random_parkour/item.json`，每 10 秒 `loot give @s`（rolls 1 + bonus 0..2）。
原有 3 件：末影珍珠(权重 1) / 干扰鱼竿(10) / 火球(20)。新增 4 件（总权重 54）：

| 道具 | 效果 | 权重 |
|---|---|---|
| 跳跃药水 | 跳跃提升 II / 10 秒（右键饮用） | 6 |
| 迅捷药水 | 速度 II / 10 秒（右键饮用） | 6 |
| 漂浮药水 | 漂浮 I / 10 秒（右键饮用） | 3 |
| 缓慢药水 | 缓慢 II / 5 秒（溅射，右键投掷） | 8 |

药水都是消耗品，所以不加 `use_cooldown`。缓慢溅射**会连自己一起减速**（`friendlyFire` 只挡玩家伤害、
不挡药水效果），定位与"火球""干扰鱼竿"一致。改稀有度/等级只要改 `item.json` 里那一个数字；
`debug/give_items.mcfunction` 里是同一份定义的复制，检查脚本会自动对账防漂移。

## 末影珍珠

`tick.mcfunction`：跑酷区域（x8..104 / y-62..9 / z211..247）内落进水里的末影珍珠直接 `kill`。

## 调试命令

- `/function minecraft:random_parkour/debug/cp_here` —— 在脚下强制铺一个记录点平台
- `/function minecraft:random_parkour/debug/cp_reset` —— 清掉自己的记录点
- `/function minecraft:random_parkour/debug/give_items` —— 直接发 4 个新道具
- 自检：`python debug/scripts/random_parkour_check.py datapacks`

# 检查脚本（`debug/scripts/`）

改完 datapack 后建议跑一遍（在 `MiniGames` 目录下执行）：

| 脚本 | 查什么 |
|---|---|
| `python debug/scripts/mcfunction_lint.py datapacks` | **命令形状**：`tag` 少了 add/remove/list、`scoreboard`/`team` 子命令拼错、`data modify` 缺目标路径、单行括号不配对、`fill`/`setblock`/`tp` 参数不足 —— 这类错误只在 `/reload` 时以 `Failed to load function … Whilst parsing command on line N` 冒出来，引用检查是查不到的 |
| `python debug/scripts/team_split_check.py datapacks` | 组队优先分队接线（5 个游戏：是否只调用一次、队名是否与游戏其它文件一致、旧计数器是否清干净） |
| `python debug/scripts/random_parkour_check.py datapacks` | 随机跑酷记录点（越界断言、平台 3×3、`park.*` 写入/读取/重置齐全、掉落池与 debug 发道具一致） |
| `python debug/scripts/t_says_check.py datapacks` | T 氏的话任务表（任务表 ↔ 判定函数 ↔ 宏调用） |

`mcfunction_lint.py` 不带参数时**只查工作区改动过的文件**（`--all` 查全仓库；目前 3068 个文件 0 错）。

# To-do Lists

也许很久都完成不了哈哈

# 道具竞速
IDEA BY 物骨

# 棋类游戏

**制作优先级：Low**

# Food Party

**制作优先级：Low**

制作东西、烹饪