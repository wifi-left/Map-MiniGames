##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add color.ran.tpy board 1
scoreboard players set color.ran.tpx board 0
execute if score color.ran.blockwidth board matches 1 at @s positioned 30 ~ ~ run tp ~ ~ ~1
execute if score color.ran.blockwidth board matches 2 at @s positioned 30 ~ ~ run tp ~ ~ ~2
execute if score color.ran.blockwidth board matches 3 at @s positioned 30 ~ ~ run tp ~ ~ ~3
execute if score color.ran.blockwidth board matches 4 at @s positioned 30 ~ ~ run tp ~ ~ ~4
execute if score color.ran.tpy board >= color.ran.tpy.to board run function minecraft:color/ran_fill/2_tp_died
execute if score color.ran.tpy board < color.ran.tpy.to board at @s run function minecraft:color/ran_fill/2_tp
