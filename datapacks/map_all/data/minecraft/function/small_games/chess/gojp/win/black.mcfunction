##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=chestgame] ["§0§l黑方§6§l胜利！"]
title @a[team=chestgame] title ["\u00a7c\u00a7lGame Over!"]
title @a[team=chestgame] subtitle ["\u00a70\u00a7l黑方\u00a76\u00a7l胜利！"]
title @a[team=chestgame,tag=chess.black] title ["\u00a76你赢了！"]
scoreboard players set chess.state state 2
fill 81 120 62 67 120 48 glass

schedule function small_games/chess/tp 5s

