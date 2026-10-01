##
## /trigger team set 7 —— 转移队长
##

execute unless score @s team.role matches 1 run return run tellraw @s ["§c只有队长可以转移队长。"]
execute unless score @s team.id matches 1.. run return run tellraw @s ["§c你还没有队伍。"]
data modify storage minecraft:team_tmp args set value {tid:0}
execute store result storage minecraft:team_tmp args.tid int 1 run scoreboard players get @s team.id
function minecraft:team/menu/transfer with storage minecraft:team_tmp args
