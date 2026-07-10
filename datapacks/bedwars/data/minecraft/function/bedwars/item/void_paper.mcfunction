effect give @s slow_falling 1 1 true
clear @s paper[custom_data~{type:"bw:void"}] 1
function bedwars/during/player/onlytpspawn
title @s title [{text:"你已返回出生点",color:light_purple}]
title @s subtitle [{translate:"已自动使用了道具「%s」",color:aqua,with:[{text:"虚空回城卷轴(一次性)",color:green}]}]
tellraw @s [{translate:"已自动使用了道具「%s」",color:gold,with:[{text:"虚空回城卷轴(一次性)",color:green,hover_event:{action:"show_item",id:"paper",components:{"minecraft:can_place_on":[{"blocks":"#minecraft:bwplace"}],"minecraft:tooltip_display":{"hidden_components":["can_place_on","can_break"]},"minecraft:can_break":[{"blocks":"#minecraft:bedblocks"}],"minecraft:item_name":"卷轴","minecraft:custom_name":{"text":"虚空回城卷轴(一次性)","color":"green","italic":false},"minecraft:lore":[{"text":"放入背包即可在落入虚空时返回出生点","color":"aqua","italic":true}],"minecraft:custom_data":{type:"bw:void"}}}}]}]