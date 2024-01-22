kill @e[type=item,nbt={Item:{tag:{desk_clear:1}}}]
execute as @e[type=item,nbt={Item:{tag:{desk_item:1}}}] at @s run data merge entity @s {pickup:1b,PickupDelay:0}