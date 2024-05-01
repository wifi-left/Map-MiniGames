##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=chestgame] ["\u00a7c\u00a7l人数不够！"]
title @a[team=chestgame] title ["\u00a7c\u00a7lGame Over!"]
title @a[team=chestgame] subtitle ["\u00a7e出现错误"]
# title @a[team=chestgame,tag=chess.black] title ["\u00a76你赢了！"]
scoreboard players set chess.state state 2
fill 81 120 62 67 120 48 glass

function small_games/chess/tp
