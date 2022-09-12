tellraw @a[team=!pw.wait] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 加入了 ",{"text":"冬泳怪鸽","color":"#1E90FF","bold": true}," \u00a77!"]
team join pw.wait
scoreboard players set wait.player tick 0 
execute as @a[team=pw.wait,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @a[team=pw.wait] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
tp @s -93 20 -10 0 0
function poolwar/introduct
clear @s
effect clear @s