fill 240 -35 39 202 -49 1 air
fill 240 -34 39 202 -3 1 air
fill 202 -35 1 240 -37 39 minecraft:snow_block
execute positioned 221 -35 20 run kill @e[type=item,distance=..30]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{disaster.snow:tool}}}}]
kill @e[type=marker,tag=disaster.snow.marker]
kill @e[type=falling_block,tag=disaster.snow.falling_block]
kill @e[type=armor_stand,tag=disaster.snow.armor_stand]
forceload remove 202 39 240 1

function minecraft:disaster/snow/resetover
