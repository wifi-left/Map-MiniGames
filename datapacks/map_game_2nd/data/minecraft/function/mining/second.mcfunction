spawnpoint @a[team=mining] -59 157 576 0 0
effect give @a[team=mining] resistance 2 25 true
execute if score mining.state state matches 2 run function minecraft:mining/step/wait_start
execute if score mining.state state matches 3 run function minecraft:mining/step/wait_time
execute if score mining.state state matches 3 run function minecraft:mining/testfor
execute if score mining.state state matches 3 as @a[gamemode=survival,team=mining] run function minecraft:mining/g_item
scoreboard players operation mining.temp temp = mining.time tick
scoreboard players set 10 board 10
scoreboard players operation mining.temp temp %= 10 board
execute if score mining.state state matches 3 if score mining.temp temp matches 0 run function minecraft:mining/show_rank
# execute in airworld run fill -57 -63 652 -135 -62 574 air