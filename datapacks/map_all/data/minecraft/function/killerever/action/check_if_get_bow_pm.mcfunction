##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set @s temp 0
execute store result score @s temp run clear @s bow[] 0
execute if score @s temp matches 1.. run tag @s add killer.saver

