##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.endwolf] ["§6获胜：§c吸血鬼"]
tellraw @a[team=wait.endwolf] ["§6获胜：§c吸血鬼"]
title @a[team=play.endwolf] title ["\u00a76获胜：\u00a7c吸血鬼"]
title @a[team=wait.endwolf] title ["\u00a76获胜：\u00a7c吸血鬼"]
title @a[team=play.endwolf,tag=!endless.vampire] subtitle ["\u00a7c你输了"]
title @a[team=play.endwolf,tag=endless.vampire] subtitle ["\u00a76你赢了"]
scoreboard players add @a[team=play.endwolf,tag=endless.vampire,tag=play.total] score 1

title @a[team=wait.endwolf] subtitle ["\u00a77游戏结束"]
function minecraft:endless_wolf/over/all
