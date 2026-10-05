# 回城卷轴：3 秒咏唱完成，传送回出生点
# tag 判定是为了防止「同一 tick 先被打断、又凑巧到点」时还传送
execute unless entity @s[tag=bw.scrolling] run return 0
tag @s remove bw.scrolling
scoreboard players reset @s bw.scroll.t
function minecraft:bedwars/during/player/onlytpspawn
effect give @s slow_falling 1 1 true
title @s title [{text:"你已返回出生点",color:light_purple}]
title @s subtitle [{translate:"已使用了道具「%s」",color:aqua,with:[{text:"回城卷轴",color:green}]}]
tellraw @s [{translate:"已使用了道具「%s」",color:gold,with:[{text:"回城卷轴",color:green}]}]
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
particle minecraft:reverse_portal ~ ~1 ~ 0.6 0.8 0.6 0.05 40 force
