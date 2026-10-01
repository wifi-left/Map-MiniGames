##
## /trigger team set 5 —— 当前队伍信息
##

execute unless score @s team.id matches 1.. run return run tellraw @s ["§c你还没有队伍。"]
data modify storage minecraft:team_tmp args set value {tid:0}
execute store result storage minecraft:team_tmp args.tid int 1 run scoreboard players get @s team.id
function minecraft:team/menu/info with storage minecraft:team_tmp args
