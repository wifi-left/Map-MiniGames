##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0
execute unless entity @a[tag=wolf.connected,team=wolfpeople] run function minecraft:twolf/events/job/cupid2

execute if entity @a[tag=wolf.connected,team=wolfpeople] run function minecraft:twolf/control/job/cupid/connect_s

tag @a[tag=wolf.selected] add wolf.connected
scoreboard players reset @a LRS_CS
playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1


