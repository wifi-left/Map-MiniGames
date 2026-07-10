execute if score @s sneak.color matches 1 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:white_wool replace snow_block
execute if score @s sneak.color matches 2 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:orange_wool replace snow_block
execute if score @s sneak.color matches 3 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:magenta_wool replace snow_block
execute if score @s sneak.color matches 4 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:light_blue_wool replace snow_block
execute if score @s sneak.color matches 5 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:yellow_wool replace snow_block
execute if score @s sneak.color matches 6 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:lime_wool replace snow_block
execute if score @s sneak.color matches 7 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:pink_wool replace snow_block
execute if score @s sneak.color matches 8 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:gray_wool replace snow_block
execute if score @s sneak.color matches 9 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:light_gray_wool replace snow_block
execute if score @s sneak.color matches 10 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:cyan_wool replace snow_block
execute if score @s sneak.color matches 11 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:purple_wool replace snow_block
execute if score @s sneak.color matches 12 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:blue_wool replace snow_block
execute if score @s sneak.color matches 13 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:brown_wool replace snow_block
execute if score @s sneak.color matches 14 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:green_wool replace snow_block
execute if score @s sneak.color matches 15 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:red_wool replace snow_block
execute if score @s sneak.color matches 16 run fill ~-0.3 ~-0.5 ~-0.3 ~0.3 ~0.5 ~0.3 minecraft:black_wool replace snow_block

execute at @s run playsound block.wool.place block @a[distance=..3] ~ ~ ~ 1 1 0
scoreboard players reset @s

kill @e[type=item,distance=0..2]
kill @s