##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute store result score tmp board run data get entity @s SelectedItem.components."minecraft:custom_data".hp
execute if score @s level >= tmp board run tag @s add success
execute as @s[tag=success] run scoreboard players operation @s bw.tmp.em = tmp board
execute as @s[tag=success] run function zombieever/removelevel/add
