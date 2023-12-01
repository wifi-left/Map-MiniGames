execute if score wolf.round board matches 1 as @a[tag=wolf.tip] at @s run function twolf/tips/cupid
tag @a remove wolf.acting
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 1 run tag @s add wolf.acting
tellraw @a[tag=wolf.tip] ["\u00a76\u00a7l丘比特\u00a7a请睁眼。"]
title @a[tag=wolf.tip] title [""]
title @a[tag=wolf.tip] subtitle ["\u00a76\u00a7l丘比特\u00a7a请睁眼。"]
execute as @a[tag=wolf.acting] at @s run function twolf/action/per/tpback_real
execute as @a[tag=wolf.acting] at @s run function twolf/items/cupid
scoreboard players set wolf.event board 1