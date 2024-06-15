##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove total.win
tellraw @a ["\u00a7b\u00a7l小游戏合集 \u00a72游戏结束！"]
title @a[team=play.total] title ["\u00a7cGAME OVER"]
title @a[team=play.total] subtitle ["\u00a7b意外结束了游戏"]
schedule function small_games/total/tp 5s
scoreboard players set gametotal state 2000
