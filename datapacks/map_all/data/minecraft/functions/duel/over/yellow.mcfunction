##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["\u00a7e战桥黄队 \u00a7a获胜！"]
title @a[team=play.duel.yellow] title ["\u00a76You won!"]
title @a[team=play.duel.blue] title ["\u00a7cYou lost!"]
scoreboard players add @a[team=play.duel.yellow,tag=play.total] score 1
function duel/over
