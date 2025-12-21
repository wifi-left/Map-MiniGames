##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["§6[Live Longest] §a游戏结束！获胜玩家： ",{"selector":"@a[team=play.live.runner]"}]
title @a[team=play.live.runner] title ["\u00a76你赢了！"]
title @a[team=play.live.killer] title ["\u00a7c你输了！"]
execute as @a[team=play.live.runner,tag=play.total] run function minecraft:small_games/total/win_score {score:1}

function minecraft:live/over

