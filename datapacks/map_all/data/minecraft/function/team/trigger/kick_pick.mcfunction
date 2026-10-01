##
## /trigger team.pick.kick —— 把名册中第 N 名成员移出队伍（计分板值 = 名册索引 + 1）
## 由“当前队伍信息”里点击成员触发（普通玩家用 /trigger，无需 OP）
##

execute unless score @s team.role matches 1 run return run tellraw @s ["§c只有队长可以把成员移出队伍。\n"]
execute unless score @s team.id matches 1.. run return 0

# 名册索引 = 触发值 − 1（行值从 1 起，0 表示“没有待处理的行点击”，避免和 enable 建出的 0 分混淆）
execute store result score tmp.team.code board run scoreboard players get @s team.pick.kick
scoreboard players remove tmp.team.code board 1

# 组装 {tid, i}
data modify storage minecraft:team_tmp pick set value {tid:0,i:0}
execute store result storage minecraft:team_tmp pick.i int 1 run scoreboard players get tmp.team.code board
execute store result storage minecraft:team_tmp pick.tid int 1 run scoreboard players get @s team.id
function minecraft:team/lib/pick_kick with storage minecraft:team_tmp pick
