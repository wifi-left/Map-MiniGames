schedule clear random_parkour/map/next_move
# /fill 12 -62 247 100 -45 211
scoreboard players set random_parkour.x board 17
scoreboard players set random_parkour.y board -62
scoreboard players set random_parkour.z board 229
execute store result score random_parkour.step board run random value 150..400
scoreboard players set random_parkour.waybackx temp 0
scoreboard players set random_parkour.waybackz temp 0
kill @e[tag=random_parkour.move]
execute in parkourworld positioned 17 -62 229 run summon marker ~ ~ ~ {Tags:["random_parkour.move"]}
execute as @e[tag=random_parkour.move,limit=1] at @s run function minecraft:random_parkour/map/move/move_main

fill 13 -62 230 15 -62 228 emerald_block strict