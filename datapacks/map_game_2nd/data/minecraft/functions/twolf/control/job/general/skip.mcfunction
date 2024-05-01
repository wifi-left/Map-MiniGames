##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:twolf/action/per/tpback
# tellraw @s ["\u00a7c请闭眼。"]
title @s title [""]
title @s subtitle ["\u00a7f请闭眼。"]
scoreboard players set wolf.ttime board 5
scoreboard players set wolf.time board -1
