kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"chair":1}}}}]

execute as @e[type=minecart,tag=chair.chair] at @s run function minecraft:chair/detect_car_motion