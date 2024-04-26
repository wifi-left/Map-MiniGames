execute if score wolf.round board matches 1 as @a[tag=wolf.tip] at @s run function twolf/tips/wolf
tag @a remove wolf.acting
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 4 run tag @s add wolf.acting
tellraw @a[tag=wolf.tip] ["\u00a7c\u00a7l狼人\u00a7a请睁眼。"]
title @a[tag=wolf.tip] title [""]
title @a[tag=wolf.tip] subtitle ["\u00a7c\u00a7l狼人\u00a7a请睁眼。"]
execute as @a[tag=wolf.acting] at @s run function twolf/action/per/tpback_real
execute as @a[tag=wolf.acting] at @s run function twolf/items/wolf
execute unless entity @a[tag=wolf.acting] store result score wolf.ttime board run random value 3..25

execute as @a[tag=wolf.tip] at @s run playsound entity.wolf.howl player @s ~ ~ ~ 1 1 1

scoreboard players set wolf.time board 120
scoreboard players set twolf.state state 2