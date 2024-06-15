##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score snow.tp board matches 1.. at @s run tp @s ~1 ~ ~
execute if score snow.tp board matches 1.. at @s run scoreboard players remove snow.tp board 1
execute if score snow.tp board matches 1.. at @s run function snow/smaller/move2

