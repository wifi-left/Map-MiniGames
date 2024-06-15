##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill 428 72 -267 434 72 -273 black_concrete
# kill @e[tag=hide.animals,type=!player]
# scoreboard players reset * LRS_START_DJS
# execute as @e[tag=hide2.ranitem] at @s run setblock ~ ~ ~ minecraft:barrel[open=true] replace
# data merge block ~ ~ ~ {}
function hide2/during/reflushitem
# execute as @e[tag=hide2.ranitem] at @s run data merge block ~ ~ ~ {LootTable:""}
# execute as @e[tag=hide2.ranitem] at @s run setblock ~ ~ ~ air
# execute as @e[tag=hide2.ranitem] at @s run setblock ~ ~ ~ minecraft:barrel[open=true]{LootTable:""} replace
kill @e[type=item]
