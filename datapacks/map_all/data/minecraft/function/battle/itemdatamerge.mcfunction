##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

data modify entity @s Owner set from entity @s Thrower

data merge entity @s {PickupDelay:0}
execute if data entity @s {Item:{id:"minecraft:white_wool"}} run kill @s

execute if data entity @s {Item:{id:"minecraft:blue_wool"}} run data merge entity @s {Item:{tag:{CanDestroy:["white_wool","blue_wool","red_wool"],CanPlaceOn:["sea_lantern","white_wool","blue_wool","red_wool"],Unbreakable:1b,HideFlags:63}}}

execute if data entity @s {Item:{id:"minecraft:red_wool"}} run data merge entity @s {Item:{tag:{CanDestroy:["white_wool","blue_wool","red_wool"],CanPlaceOn:["sea_lantern","white_wool","blue_wool","red_wool"],Unbreakable:1b,HideFlags:63}}}

