##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=play.sur.zom,tag=play.total] run function minecraft:small_games/total/win_score {score:2}
tellraw @a ["§9生存游戏 ＞ §c游戏结束。\n§6获胜者：僵尸队 (",{"selector":"@a[team=play.sur.zom]"},")"]
title @a[team=play.sur] title ["\u00a7c游戏结束"]
title @a[team=play.sur.zom] title ["\u00a7c游戏结束"]
title @a[team=wait.sur] title ["\u00a7c游戏结束"]
title @a[team=play.sur.zom] title ["\u00a76你赢了！"]
function surgame:over/over

