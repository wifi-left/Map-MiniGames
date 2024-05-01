##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s run function gun/move
scoreboard players remove tmp.countdown board 1
execute if score tmp.countdown board matches 1.. run function gun/countdownmove
