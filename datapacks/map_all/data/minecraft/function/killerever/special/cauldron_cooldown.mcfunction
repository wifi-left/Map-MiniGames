execute if block ~ ~ ~ powder_snow_cauldron[level=3] run setblock ~ ~ ~ minecraft:cauldron

execute if block ~ ~ ~ powder_snow_cauldron[level=2] run setblock ~ ~ ~ minecraft:powder_snow_cauldron[level=3]
execute if block ~ ~ ~ powder_snow_cauldron[level=1] run setblock ~ ~ ~ minecraft:powder_snow_cauldron[level=2]

execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ minecraft:powder_snow_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ minecraft:water_cauldron[level=3]
execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ minecraft:water_cauldron[level=2]

execute unless block ~ ~ ~ cauldron run playsound item.bottle.fill player @a[distance=..5] ~ ~1 ~ 1 1.5 0

execute unless block ~ ~ ~ cauldron run particle dust{color:505092,scale:2} ~ ~1 ~ 0 0 0 1 10 normal
