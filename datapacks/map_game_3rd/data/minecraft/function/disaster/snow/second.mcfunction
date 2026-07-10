execute in airworld run spawnpoint @a[team=disaster.snow] 139 -60 84

execute if score disaster.snow.state state matches 2..99 run function minecraft:disaster/snow/testfor_over
execute if score disaster.snow.state state matches 2..99 if score disaster.snow.time board matches 1.. run function minecraft:disaster/snow/countdown
