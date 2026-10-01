##
## /trigger team set 6 —— 退出队伍（队员直接退出，队长退出会把队长转给下一名成员）
##

execute unless score @s team.id matches 1.. run return run tellraw @s ["§c你还没有队伍。"]
execute if score @s team.role matches 1 run function minecraft:team/action/leave_leader
execute if score @s team.role matches 2 run function minecraft:team/action/leave_member

# 无论名册里存的名字是否准确，退出者自己的计分项一定清掉，避免卡在“已组队”状态
scoreboard players reset @s team.id
scoreboard players reset @s team.role
