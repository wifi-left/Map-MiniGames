##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=chestgame] ["\u00a7f\u00a7l白方\u00a76\u00a7l胜利！"]
title @a[team=chestgame] title ["\u00a7c\u00a7lGame Over!"]
title @a[team=chestgame] subtitle ["\u00a7f\u00a7l白方\u00a76\u00a7l胜利！"]
title @a[team=chestgame,tag=chess.white] title ["\u00a76你赢了！"]
scoreboard players set chess.state state 2
schedule function small_games/chess/tp 5s
