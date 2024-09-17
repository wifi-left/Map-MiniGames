##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:twolf/over/show_jobs

title @a[tag=wolf.tip] title ["\u00a7c\u00a7l游戏结束"]
title @a[tag=wolf.tip] subtitle ["\u00a7c无人获胜"]
tellraw @a[tag=wolf.tip] ["\n\n\n\n\u00a7c玩家全部死亡。游戏结束。\n"]
function minecraft:twolf/over/all
