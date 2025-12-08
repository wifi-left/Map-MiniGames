effect give @a[team=fishing] resistance 2 25 true
effect give @a[team=fishing] water_breathing 2 25 true
execute if score fishing.state state matches 2 run function minecraft:fishing/step/wait_start
execute if score fishing.state state matches 3 run function minecraft:fishing/step/wait_time
execute if score fishing.state state matches 3 run function minecraft:fishing/testfor
execute if score fishing.state state matches 3 as @a[gamemode=adventure,team=fishing] run function minecraft:fishing/g_item
scoreboard players operation fishing.temp temp = fishing.time tick
scoreboard players set 15 board 15
scoreboard players operation fishing.temp temp %= 15 board
execute if score fishing.state state matches 3 if score fishing.temp temp matches 0 run function minecraft:fishing/show_rank
# execute in airworld run fill -57 -63 652 -135 -62 574 air