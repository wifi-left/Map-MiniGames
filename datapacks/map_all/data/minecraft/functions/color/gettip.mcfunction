##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @a[team=play.color,gamemode=adventure] #minecraft:terracottas
execute positioned -52 35 64 run function minecraft:color/ran_fill/3_whichblock
function minecraft:color/tip_give_item_from_function with storage minecraft:temp

