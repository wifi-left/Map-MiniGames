# say day
title @a[tag=wolf.tip] title [""]
title @a[tag=wolf.tip] title ["\u00a7f\u00a7l天亮了"]
tellraw @a[tag=wolf.tip] ["\u00a7f\u00a7l天亮了。"]
scoreboard players set wolf.ttime board 3
scoreboard players set wolf.event board 8
function twolf/time/day
function twolf/action/tppoint_day
