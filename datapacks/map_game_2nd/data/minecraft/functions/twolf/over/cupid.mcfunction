function minecraft:twolf/over/show_jobs

title @a[tag=wolf.tip] title ["\u00a7c\u00a7l游戏结束"]
title @a[tag=wolf.tip] subtitle ["\u00a7e【丘比特阵营】\u00a76胜利"]
execute as @a[tag=wolf.tip] if score @s LRS_JOB matches 1 run title @s title ["\u00a7a\u00a7l你赢了"]
execute as @a[tag=wolf.tip] if score @s LRS_JOB matches 1 run tag @s add wolf.tmp
title @a[tag=wolf.connected] title ["\u00a7a\u00a7l你赢了"]
tellraw @a[tag=wolf.tip] ["\n\u00a7e【丘比特阵营】\u00a76获得了胜利。\n"]

tag @a remove wolf.tmp
function minecraft:twolf/over/all