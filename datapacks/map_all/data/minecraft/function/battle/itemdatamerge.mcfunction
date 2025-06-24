##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
data modify entity @s Owner set from entity @s Thrower

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
data merge entity @s {PickupDelay:0}
execute if data entity @s {Item:{id:"minecraft:white_wool"}} run kill @s

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if data entity @s {Item:{id:"minecraft:blue_wool"}} run data merge entity @s {Item:{}}

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if data entity @s {Item:{id:"minecraft:red_wool"}} run data merge entity @s {Item:{}}


