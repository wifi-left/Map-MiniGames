##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# say day
title @a[tag=wolf.tip] title [""]
title @a[tag=wolf.tip] subtitle ["\u00a7f\u00a7l天亮了"]
tellraw @a[tag=wolf.tip] ["\n\n\n\u00a7f\u00a7l天亮了。"]
scoreboard players set wolf.ttime board 3
scoreboard players set wolf.event board 8
function twolf/time/day
function twolf/action/tppoint_day

