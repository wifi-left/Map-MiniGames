##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove wolf.acting
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 1 run tag @s add wolf.acting
tellraw @a[tag=wolf.tip] ["\n\n\n§6§l丘比特§a请睁眼。"]
execute if score wolf.round board matches 1 as @a[tag=wolf.tip] at @s run function twolf/tips/cupid
title @a[tag=wolf.tip] title [""]
title @a[tag=wolf.tip] subtitle ["\u00a76\u00a7l丘比特\u00a7a请睁眼。"]
execute as @a[tag=wolf.acting] at @s run function twolf/action/per/tpback_real
execute as @a[tag=wolf.acting] at @s run function twolf/items/cupid
scoreboard players set wolf.event board 1

