##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function bedwars/during/player/onlytpspawn

# -359 30 210
# -305 30 265
# -251 30 211
# -305 30 157

title @s clear
tellraw @s ["\u00a7e你已经重生！"]
tag @s remove bw.fhing
gamemode adventure @s
clear @s
