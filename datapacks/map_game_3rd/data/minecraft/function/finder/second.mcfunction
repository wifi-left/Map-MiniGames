effect give @a[team=finder] resistance 2 25 true
effect give @a[team=finder] water_breathing 2 25 true
execute if score finder.state state matches 2 run function minecraft:finder/step/wait_start
execute if score finder.state state matches 3 run function minecraft:finder/step/wait_time
execute if score finder.state state matches 3 run function minecraft:finder/testfor
scoreboard players operation finder.temp temp = finder.time tick
scoreboard players set 15 board 15
scoreboard players operation finder.temp temp %= 15 board
execute if score finder.state state matches 3 if score finder.temp temp matches 0 run function minecraft:finder/show_rank
# execute in airworld run fill -57 -63 652 -135 -62 574 air