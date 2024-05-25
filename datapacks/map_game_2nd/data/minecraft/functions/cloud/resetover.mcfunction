##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute positioned 688 -1 352 run kill @e[type=item,distance=0..200]

execute as @e[tag=sw.chests] at @s run setblock ~ ~ ~ chest
execute as @e[tag=sw.chests] at @s run summon text_display ~ ~1 ~ {Tags:["sw.marker","sw.texts","sw.text.chest"],text:'"\\u00a7a箱子"',CustomNameVisible:0b,billboard:"vertical",see_through:false,view_range:0.3f}
title @a[team=wait.sw] reset
title @a[team=wait.sw] title ["\u00a7b地图准备完毕"]
title @a[team=wait.sw] subtitle ["\u00a7a重置完毕"]
clear @a[team=wait.sw]
effect clear @a[team=wait.sw]
effect give @a[team=wait.sw] instant_health 1 25 true
execute in airworld run forceload add 599 266 780 442


tag @e[tag=sw.spawn] add cloud.place.tobetp
execute in airworld as @a[team=wait.sw,tag=!GOABLE.SPEC] at @s run function minecraft:cloud/giveplace
kill @e[tag=cloud.place.tobetp]

scoreboard players set cloud.step board 1
scoreboard players set cloud.countdown board 11
scoreboard players set sw.state state 2