##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# start from 30 17 77 to -5 17 77
# start from 30 17 77 to 30 17 112
execute at @s run function minecraft:color/ran_fill/2_place
execute if score color.ran.blockwidth board matches 1 if score color.ran.tpx board < color.ran.tpx.to board at @s run tp ~-1 ~ ~
execute if score color.ran.blockwidth board matches 2 if score color.ran.tpx board < color.ran.tpx.to board at @s run tp ~-2 ~ ~
execute if score color.ran.blockwidth board matches 3 if score color.ran.tpx board < color.ran.tpx.to board at @s run tp ~-3 ~ ~
execute if score color.ran.blockwidth board matches 4 if score color.ran.tpx board < color.ran.tpx.to board at @s run tp ~-4 ~ ~
execute if score color.ran.tpx board < color.ran.tpx.to board at @s run scoreboard players add color.ran.tpx board 1
execute if score color.ran.tpx board < color.ran.tpx.to board at @s run function minecraft:color/ran_fill/2_tp
execute if score color.ran.tpx board >= color.ran.tpx.to board at @s run function minecraft:color/ran_fill/2_tp_y


