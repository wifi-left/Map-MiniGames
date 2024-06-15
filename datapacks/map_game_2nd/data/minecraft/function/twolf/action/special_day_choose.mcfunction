##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players operation wolf.resttime board = wolf.time board
execute as @a[gamemode=adventure,team=wolfpeople] at @s run function twolf/action/per/tpback_special
