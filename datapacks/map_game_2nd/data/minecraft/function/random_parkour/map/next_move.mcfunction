execute unless score random_parkour.state state matches 1..99 run return 0
schedule clear random_parkour/map/next_move
execute if score random_parkour.step board matches ..0 in parkourworld run return run function minecraft:random_parkour/map/move/move_over
execute as @e[tag=random_parkour.move,limit=1] at @s run function minecraft:random_parkour/map/place/place_main

execute in parkourworld as @e[tag=random_parkour.move,limit=1] at @s run function minecraft:random_parkour/map/move/move_main
