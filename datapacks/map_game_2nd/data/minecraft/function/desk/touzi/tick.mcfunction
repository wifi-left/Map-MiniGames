##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{desk_clear:1}}}}]

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{desk_item:1}}}}] at @s run data merge entity @s {pickup:1b,PickupDelay:0}

