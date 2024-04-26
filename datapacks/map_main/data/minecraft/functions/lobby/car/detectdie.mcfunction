# tag @s add car.tmp
# scoreboard players set car.detect board 0
# execute as @a[team=lobby] if data entity @s {RootVehicle:{Entity:{Tags:["car.tmp"]}}} run scoreboard players set car.detect board 1
# execute if score car.detect board matches 0 run kill @s[type=minecart]
# tag @s remove car.tmp