effect give @a[team=elytra] resistance 2 25 true
execute if score elytra.state state matches 2 run function minecraft:elytra/step/wait_start
execute if score elytra.state state matches 3 run function minecraft:elytra/step/wait_time
execute if score elytra.state state matches 3 run function minecraft:elytra/testfor
execute if score elytra.state state matches 3 as @a[gamemode=adventure,team=elytra] run function minecraft:elytra/g_item
scoreboard players operation elytra.temp temp = elytra.time tick
scoreboard players set 5 board 5
scoreboard players operation elytra.temp temp %= 5 board
execute if score elytra.state state matches 3 if score elytra.temp temp matches 0 run function minecraft:elytra/show_rank
# execute in airworld run fill -57 -63 652 -135 -62 574 air