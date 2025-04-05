##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute in golfworld run forceload add -98 87 -20 32
execute if score golf.map board matches 1 run function minecraft:golf/resets/1
execute if score golf.map board matches 2 run function minecraft:golf/resets/2
execute in golfworld run forceload remove -98 87 -20 32

