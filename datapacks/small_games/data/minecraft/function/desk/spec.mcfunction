##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
tellraw @s ["§c很抱歉，当前游戏已经开始。你将在下一轮进入游戏。"]
execute if score desk.type board matches 3 run function minecraft:merchant/spec
