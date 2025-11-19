spawnpoint @a[team=miner] -59 157 576 0 0
effect give @a[team=miner] resistance 2 25 true
execute if score miner.state state matches 2 run function minecraft:miner/step/wait_start
execute if score miner.state state matches 3 run function minecraft:miner/step/wait_time
execute if score miner.state state matches 3 run function minecraft:miner/testfor
execute if score miner.state state matches 3 as @a[gamemode=survival,team=miner] run function minecraft:miner/g_item
# execute in airworld run fill -57 -63 652 -135 -62 574 air