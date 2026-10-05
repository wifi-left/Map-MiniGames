# 起床战争临时实体统一清理 —— 游戏开始（reset.mcfunction）与游戏结束（after/over.mcfunction）都调用它
#
# 分两类处理：
#   ① 带标签的（bw.* / tntsheep.*）—— 一定是本包自己的东西，直接全局清
#   ② 没有标签、只能按类型找的（箭 / 鸡蛋 / 苦力怕 / 火球 / 掉落物）—— 只在起床战争范围内清，
#      免得顺手把同一存档里其它小游戏（雪战、TNT 大战、枪战…）的东西也一起清掉
#
# 起床范围的盒子（覆盖竞技场 + 出生/旁观平台 + 大厅；其它小游戏都在很远处，互不重叠）：
#   x -400..-210   y -70..85   z 100..305
# 地图家具（床标记 bw.bed.* / 资源生成点 iron·gold·diamond·emerald / 商店招牌 shop·shop2·dmshop /
# 生成点文字 bedwars·bedwars.icon）属于地图，由 resets/points/<地图> 负责，不在本文件清理

# ① 按类型清的（仅起床范围）
kill @e[type=arrow,x=-400,y=-70,z=305,dx=190,dy=155,dz=-205]
kill @e[type=egg,x=-400,y=-70,z=305,dx=190,dy=155,dz=-205]
kill @e[type=creeper,x=-400,y=-70,z=305,dx=190,dy=155,dz=-205]
kill @e[type=fireball,x=-400,y=-70,z=305,dx=190,dy=155,dz=-205]
kill @e[type=item,x=-400,y=-70,z=305,dx=190,dy=155,dz=-205]

# ② 按标签清的（本包自己的临时召唤物）
# 火球（火焰弹）：本体 + 影子/向量标记
kill @e[tag=bw.fb]
kill @e[tag=bw.fb.shadow]
kill @e[tag=bw.fb.vec]
# TNT 羊（羊本体 + 落地标记）
tag @e[type=sheep,tag=bw.tntsheep] remove bw.tntsheep
kill @e[type=sheep,tag=bw.tntsheep]
kill @e[tag=tntsheep.spawn]
# 救援平台的标记（黏液块由调用方先 platform_retract 收回）
kill @e[tag=bw.pf]
# 速建防御塔的标记
kill @e[tag=bw.tower.building]
kill @e[tag=bw.tower.spawn]
# 铁傀儡守卫（bw.golem = 已常驻；bw.golem.spawn = 刚放下还没被 owner 认领）
kill @e[tag=bw.golem]
kill @e[tag=bw.golem.spawn]
# 蠹虫雪球：影子标记、蠹虫本体，以及还在飞的雪球（它在 bug_attach 里也打了 bw.bug）
kill @e[tag=bw.bug.shadow]
kill @e[tag=bw.bug]
# 僵尸潮
kill @e[tag=bw.zombie]
# 最终对决的凋灵等统一登记在 bw.entity
kill @e[tag=bw.entity]
