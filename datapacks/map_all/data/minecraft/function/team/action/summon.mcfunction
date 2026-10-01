##
## 队长召集队员们回大厅（由 /trigger team set 11 进入）
##
## 规则：只有队长能召集，且队长本人必须在大厅（team=lobby）。
##   队长在大厅才好接待回来的队员；如果他自己还在某个游戏或该游戏的等待区里，就先用 /trigger hub 回大厅。
##   召集 = 代每个“还不在大厅”的队员执行一次 /trigger hub，因此正在游戏中的队员也会被叫回来。
##

# 1）队长身份
execute unless score @s team.id matches 1.. run return run tellraw @s ["§c你还没有队伍。\n"]
execute unless score @s team.role matches 1 run return run tellraw @s ["§c只有队长可以召集队员回大厅。\n"]

# 2）队长必须在大厅
execute unless entity @s[team=lobby] run return run tellraw @s ["§c你不在大厅，无法召集队员回大厅。\n§7请先用 §6/trigger hub§7 自己回到大厅，再召集队员。\n"]

# 3）队长名字（用来提示队员）
execute at @s run function minecraft:team/lib/probe_name
data modify storage minecraft:team_tmp summon set value {from:""}
execute if data storage minecraft:team_tmp probe run data modify storage minecraft:team_tmp summon.from set from storage minecraft:team_tmp probe.name

# 4）逐个召集“还不在大厅”的队员（队长自己在大厅，不会被选到；没分数=没队伍的也会被排除）
scoreboard players operation tmp.team.tid board = @s team.id
scoreboard players set tmp.team.sumn board 0
execute as @a[team=!lobby] if score @s team.id = tmp.team.tid board run function minecraft:team/lib/summon_one with storage minecraft:team_tmp summon

# 5）反馈召集人数
#    注意：这里用 nbt 组件把数字直接读进 tellraw —— 本函数是“无参调用”的，
#    如果写成宏变量那种写法，整个调用会因为“没提供宏参数”而直接失败，玩家什么也看不到
#    （含宏行的函数必须带参数调用；本文件刻意保持成普通函数）
execute if score tmp.team.sumn board matches 1.. store result storage minecraft:team_tmp sumn int 1 run scoreboard players get tmp.team.sumn board
execute if score tmp.team.sumn board matches 1.. run tellraw @s ["\n§8========================================\n§a已召集 §e",{"nbt":"sumn","storage":"minecraft:team_tmp"},"§a 名队员回大厅。\n§8========================================\n"]
execute if score tmp.team.sumn board matches 0 run tellraw @s ["§7队员们都已经在大厅了，不需要召集。\n"]
