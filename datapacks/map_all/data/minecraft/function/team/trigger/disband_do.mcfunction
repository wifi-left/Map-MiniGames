##
## /trigger team set 9 —— 确认删除队伍（由确认对话框调用）
##

execute unless score @s team.role matches 1 run return run tellraw @s ["§c只有队长可以删除队伍。"]
execute unless score @s team.id matches 1.. run return 0
data modify storage minecraft:team_tmp args set value {tid:0,who:"队长"}
execute store result storage minecraft:team_tmp args.tid int 1 run scoreboard players get @s team.id
function minecraft:team/action/disband_do with storage minecraft:team_tmp args
