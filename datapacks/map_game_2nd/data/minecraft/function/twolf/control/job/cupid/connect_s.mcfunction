##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[tag=wolf.selected] add wolf.connected
scoreboard players reset @a LRS_CS
tellraw @s ["§a你连接了 ",{"selector":"@a[tag=wolf.connected,team=wolfpeople]"}]
function minecraft:twolf/action/tppoint
tag @s remove wolf.acting
execute as @a[tag=wolf.connected,team=wolfpeople] run function minecraft:twolf/events/job/cupidconnection
execute run function minecraft:twolf/events/job/cupidconnection_s
scoreboard players set wolf.time board -1
scoreboard players set wolf.event board 2
scoreboard players set wolf.ttime board 5
# tellraw @s ["\u00a7c请闭眼。"]
title @s title [""]
title @s subtitle ["\u00a7f请闭眼。"]

