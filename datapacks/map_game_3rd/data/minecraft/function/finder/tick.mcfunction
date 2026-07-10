execute as @e[tag=finder.eggs.interaction,type=interaction] run function minecraft:finder/egg_whether_find
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{finder:coin}}}}]