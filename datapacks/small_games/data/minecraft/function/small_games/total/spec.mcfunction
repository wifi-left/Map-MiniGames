##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

gamemode spectator @s

team join play.total @s
tellraw @s ["§c抱歉！游戏已经开始了。您将在下一个小游戏加入！"]
tag @s add play.total

scoreboard players operation @s globle.game = game.total globle.game
tp @s @r[gamemode=!spectator,tag=play.total]