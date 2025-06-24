##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score wolf.round board matches 1 as @a[tag=wolf.tip] at @s run function twolf/tips/predictor
tag @a remove wolf.acting
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 6 run tag @s add wolf.acting
tellraw @a[tag=wolf.tip] ["\n\n\n§6§l预言家§a请睁眼。"]
title @a[tag=wolf.tip] title [""]
title @a[tag=wolf.tip] subtitle ["\u00a76\u00a7l预言家\u00a7a请睁眼。"]
execute as @a[tag=wolf.acting] at @s run function twolf/action/per/tpback_real
execute as @a[tag=wolf.acting] at @s run function twolf/items/predictor
execute unless entity @a[tag=wolf.acting] store result score wolf.ttime board run random value 3..25
execute as @a[tag=wolf.tip] at @s run playsound entity.cow.ambient player @s ~ ~ ~ 1 0 1

scoreboard players set wolf.time board 60
scoreboard players set twolf.state state 2

