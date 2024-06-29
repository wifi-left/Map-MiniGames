##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.zombie] ["\n\u00a7a    你获胜了！\n"]
title @a[team=play.zombie] title ["\u00a76你获胜了！"]
title @a[team=play.zombie] subtitle ["\u00a7aGood Game!"]
gamemode spectator @a[team=play.zombie,gamemode=adventure]
function zombieever/over/all
tellraw @a[team=play.zombie] ["\n\u00a72\u00a7l   \u00a76游戏结束！\u00a7a冒险者们获胜！\n"]
