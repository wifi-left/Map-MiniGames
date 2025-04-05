##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

## WARNING: 'storage' will not be transformed because we don't know what to do with it.
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=dmshop] at @s run data modify block ~ ~-1 ~ Items set from storage minecraft:dmshop Item
## WARNING: 'storage' will not be transformed because we don't know what to do with it.
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=shop] at @s run data modify block ~ ~-1 ~ Items set from storage minecraft:shop Item
## WARNING: 'storage' will not be transformed because we don't know what to do with it.
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=shop2] at @s run data modify block ~ ~-1 ~ Items set from storage minecraft:shop Item2


