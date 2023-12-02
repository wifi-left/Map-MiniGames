execute if score wolf.round board matches 1 as @a[tag=wolf.tip] at @s run function twolf/tips/arsonist
tag @a remove wolf.acting
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 3 run tag @s add wolf.acting
tellraw @a[tag=wolf.tip] ["\u00a76\u00a7l纵火犯\u00a7a请睁眼。"]
title @a[tag=wolf.tip] title [""]
title @a[tag=wolf.tip] subtitle ["\u00a76\u00a7l纵火犯\u00a7a请睁眼。"]
execute as @a[tag=wolf.acting] at @s run function twolf/action/per/tpback_real
execute as @a[tag=wolf.acting] at @s run function twolf/items/arsonist
execute unless entity @a[tag=wolf.acting] store result score wolf.ttime board run random value 3..25

scoreboard players set wolf.time board 60
scoreboard players set twolf.state state 2