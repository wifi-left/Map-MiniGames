##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set hide.anicount board 0
execute as @e[tag=hide.animals] at @s run scoreboard players add hide.anicount board 1
execute if score hide.anicount board matches ..40 run function hideseek/during/spawnanimal

