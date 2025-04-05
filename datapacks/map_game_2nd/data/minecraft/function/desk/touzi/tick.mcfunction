kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{desk_clear:1}}}}]

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{desk_item:1}}}}] at @s run data merge entity @s {pickup:1b,PickupDelay:0}
