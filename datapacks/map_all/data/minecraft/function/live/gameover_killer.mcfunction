##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["§6[Live Longest] §a游戏结束！获胜玩家：",{"selector":"@a[team=play.live.killer]"}]
execute as @a[team=play.live.killer,tag=play.total] run function minecraft:small_games/total/win_score {score:1}

title @a[team=play.live.killer] title ["\u00a76You won!"]
title @a[team=play.live.runner] title ["\u00a7cYou lost!"]
function minecraft:live/over

