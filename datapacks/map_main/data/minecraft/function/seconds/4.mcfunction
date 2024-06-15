##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# setblock 121 120 60 minecraft:air
# /data get entity @s RootVehicle
# execute positioned 122 120 59 as @e[tag=lobby.car,type=minecart,distance=3..] run function lobby/car/detectdie
function o_f_tick
# execute positioned 122 120 59 as @e[tag=lobby.car,type=minecart,distance=..3] run function lobby/car/detectgo
