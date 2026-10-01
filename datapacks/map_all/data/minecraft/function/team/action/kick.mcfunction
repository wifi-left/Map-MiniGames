##
## 把成员移出队伍（宏：$(target) 目标名字；仅队长可用）
## 由“当前队伍信息”里点击成员触发
##

execute unless score @s team.role matches 1 run return run tellraw @s ["§c只有队长可以把成员移出队伍。"]
data modify storage minecraft:team_tmp args set value {tid:0,name:""}
execute store result storage minecraft:team_tmp args.tid int 1 run scoreboard players get @s team.id
$data modify storage minecraft:team_tmp args.name set value "$(target)"
function minecraft:team/action/kick_do with storage minecraft:team_tmp args
