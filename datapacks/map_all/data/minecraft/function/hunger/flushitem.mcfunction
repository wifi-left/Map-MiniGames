##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute as @e[type=minecraft:marker,tag=hunger.chest] at @s run data merge block ~ ~ ~ {Items:[]}

execute as @e[type=minecraft:marker,tag=hunger.chest] at @s run data merge block ~ ~ ~ {LootTable:""}
execute as @e[type=minecraft:marker,tag=hunger.chest] at @s run setblock ~ ~ ~ air replace
execute as @e[type=minecraft:marker,tag=hunger.chest] at @s run setblock ~ ~ ~ chest{CustomName:'"\\u00a7a\\u00a7l补给箱"',LootTable:"minecraft:hunger/chest"} replace
