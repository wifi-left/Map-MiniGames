##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
team join play.total @s
tellraw @s ["\u00a7c抱歉！游戏已经开始了。您将在下一个小游戏加入！"]
tag @s add play.total
