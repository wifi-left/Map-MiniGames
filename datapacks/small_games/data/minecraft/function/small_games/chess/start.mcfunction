##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @a[team=chestgame] 74 135 55 0 90
title @a[team=chestgame] title ["\u00a7e请稍等..."]
title @a[team=chestgame] subtitle ["\u00a7a游戏即将开始！"]
scoreboard players set chess.state state 3
schedule function minecraft:small_games/chess/truestart 10t replace