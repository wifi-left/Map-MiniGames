##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{desk_clear:1}}}}]

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{desk:1}}}}] at @s run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{desk_item:1}}}}] at @s run data merge entity @s {PickupDelay:0}

execute if score desk.russia.random.rounds tick matches 0.. run function minecraft:desk/russia/random_animation