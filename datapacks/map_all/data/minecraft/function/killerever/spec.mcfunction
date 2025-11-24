##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
tellraw @s ["§c很抱歉，游戏已经开始了！"]
tp @s @r[team=play.killer,gamemode=adventure]
team join play.killer @s