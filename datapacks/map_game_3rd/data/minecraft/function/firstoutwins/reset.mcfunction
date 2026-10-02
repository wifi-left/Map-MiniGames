execute in airworld run fill 217 -44 125 195 -25 103 air
execute in airworld positioned 206 -35 114 run kill @e[type=item,distance=..15]

execute if score firstoutwins.settings.map state matches 0 in airworld run function minecraft:firstoutwins/map/random
execute unless score firstoutwins.settings.map state matches 0 in airworld run function minecraft:firstoutwins/map/specific

execute in airworld run forceload remove 194 102 218 126
execute in airworld run forceload remove 139 102 115 126

function minecraft:firstoutwins/resetover
