##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["§9战桥蓝队 §a获胜！"]
title @a[team=play.duel.blue] title ["\u00a76你赢了！"]
title @a[team=play.duel.yellow] title ["\u00a7c你输了！"]
execute as @a[team=play.duel.blue,tag=play.total] run function minecraft:small_games/total/win_score {score:3}
function duel/over


