##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in airworld run forceload add 599 266 780 442

kill @e[tag=sw.marker,type=marker]
kill @e[tag=sw.marker,type=text_display]
execute positioned 688 -1 352 run kill @e[type=item,distance=0..200]
execute positioned 688 -1 352 run kill @e[type=tnt,distance=0..200]
execute positioned 688 -1 352 run kill @e[type=tnt_minecart,distance=0..200]
execute positioned 688 -1 352 run kill @e[type=creeper,distance=0..200]
execute positioned 688 -1 352 run kill @e[type=fireball,distance=0..200]

scoreboard players set cloud.reset board 0
kill @e[tag=sw.marker,type=marker]
schedule clear minecraft:cloud/maps/ungrassed
execute if score sw.map state matches ..1 run function minecraft:cloud/maps/ungrassed
title @a[team=wait.sw] times 0 30 0
