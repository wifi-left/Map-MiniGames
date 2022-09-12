tellraw @a[team=!car.wait] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 加入了 ",{"text":"Car Race","color":"#009966","bold": true}," \u00a77!"]
team join car.wait
scoreboard players set wait.player tick 0 
execute as @a[team=car.wait,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @a[team=car.wait] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
tp @s 148.0 96 8.0 0 0
function car_race/introduct
clear @s
effect clear @s
tag @s remove car.win
