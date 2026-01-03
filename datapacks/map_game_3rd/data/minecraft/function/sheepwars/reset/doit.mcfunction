execute unless dimension airworld in airworld run return run function minecraft:sheepwars/reset/doit
fill 408 -64 824 334 -64 898 air

execute if score sheepwars.map board matches 0 run function sheepwars/reset/maps/sand
execute if score sheepwars.map board matches 1 run function sheepwars/reset/maps/stone

execute in airworld positioned 370 -47 861 run kill @e[type=item,distance=..50]
execute in airworld positioned 370 -47 861 run kill @e[type=sheep,distance=..50]

function minecraft:sheepwars/reset/over
