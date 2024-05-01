##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players operation tmp.countdown board = @s btw.gunspeed
# execute if score tmp.count
execute as @s at @s run function boatgun:gun/countdownmove

