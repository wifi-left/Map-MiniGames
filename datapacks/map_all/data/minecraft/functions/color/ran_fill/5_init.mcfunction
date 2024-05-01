##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# from 36 y 75 75 y 114 to -7 17 75
fill -7 17 75 32 17 114 air

# 2-18

execute store result storage minecraft:temp random_value int 1 run random value 2..18
function color/ran_fill/5_place with storage minecraft:temp

function color/rancolor
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:-7,x2:32,y1:17,y2:17,z1:75,z2:114,replace_block:"diamond_block"}
function color/ran_fill/5_place_block with storage minecraft:temp
# white
# orange
# magenta
# light_blue
# yellow
# lime
# pink
# gray
# light_gray
# cyan
# purple
# blue
# brown
# green
# red
# black
summon marker ~ ~ ~ {Tags:["color.tmp"]}
spreadplayers 13.00 95.00 0 20 under 20 false @e[tag=color.tmp]
execute as @e[tag=color.tmp] at @s run clone ~ ~-1 ~ ~ ~-1 ~ -52 35 64
kill @e[tag=color.tmp]
