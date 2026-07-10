function minecraft:t_says/reset
execute as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s run function minecraft:t_says/judge/give_judge/timeout
recipe take @a[team=t_says] *

title @a[team=t_says] actionbar ["\u00a76本轮结束。"]
scoreboard players set t_says.time board 2
scoreboard players set t_says.state state 4
scoreboard players set t_says.has_finished board 0