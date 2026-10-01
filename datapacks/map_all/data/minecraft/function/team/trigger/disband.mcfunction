##
## /trigger team set 8 —— 打开“删除队伍”确认框（仅队长）
##

execute unless score @s team.role matches 1 run return run tellraw @s ["§c只有队长可以删除队伍。"]
execute unless score @s team.id matches 1.. run return run tellraw @s ["§c你还没有队伍。"]
dialog show @s minecraft:team/disband
