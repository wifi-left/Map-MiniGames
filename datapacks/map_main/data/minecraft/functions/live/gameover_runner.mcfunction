##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["\u00a76[Live Longest] \u00a7a游戏结束！获胜玩家： ",{"selector":"@a[team=play.live.runner]"}]
title @a[team=play.live.runner] title ["\u00a76You won!"]
title @a[team=play.live.killer] title ["\u00a7cYou lost!"]
function minecraft:live/over
