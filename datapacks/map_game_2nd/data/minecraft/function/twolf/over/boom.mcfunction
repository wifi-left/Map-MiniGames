##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:twolf/over/show_jobs
execute if entity @a[tag=wolf.connected,scores={LRS_JOB=7}] run function twolf/over/cupid
execute if entity @a[tag=wolf.connected,scores={LRS_JOB=7}] run return 0
title @a[tag=wolf.tip] title ["\u00a7c\u00a7l游戏结束"]
title @a[tag=wolf.tip] subtitle ["\u00a7b炸弹人阵营\u00a76胜利"]
tellraw @a[tag=wolf.tip] ["\n\n\n\n§b【炸弹人阵营】§6获得了胜利。\n"]
function minecraft:twolf/over/all

