##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tag @s add car.tmp
# scoreboard players set car.detect board 0
# execute as @a[team=lobby] if data entity @s {RootVehicle:{Entity:{Tags:["car.tmp"]}}} run scoreboard players set car.detect board 1
# execute if score car.detect board matches 1 run setblock 121 120 60 minecraft:redstone_torch
# tag @s remove car.tmp
