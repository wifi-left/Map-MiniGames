##
## 把队长转给 $(target)（宏：$(target) 目标名字；仅队长可用）
##

execute unless score @s team.role matches 1 run return run tellraw @s ["§c只有队长可以转移队长。"]
data modify storage minecraft:team_tmp args set value {tid:0,name:""}
execute store result storage minecraft:team_tmp args.tid int 1 run scoreboard players get @s team.id
$data modify storage minecraft:team_tmp args.name set value "$(target)"
function minecraft:team/action/transfer_do with storage minecraft:team_tmp args

# 转移后自己已变成队员，刷新主菜单
function minecraft:team/trigger/menu
