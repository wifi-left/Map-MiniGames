kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"douzi":1}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"live.equipment":1}}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:heavy_weighted_pressure_plate"}}]
execute in overworld positioned 189 -63 262 as @a[distance=..1,gamemode=adventure,team=live] at @s run function minecraft:live/died
execute in overworld positioned 189 -63 262 as @a[distance=..1,gamemode=adventure,team=live.killer] at @s run function minecraft:live/become_killer