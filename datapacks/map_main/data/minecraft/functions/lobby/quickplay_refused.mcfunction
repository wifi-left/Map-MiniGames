##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 1
tellraw @s ["\u00a7c您无法在进行游戏时快速加入其他游戏队列！"]
scoreboard players reset @s quickplay
