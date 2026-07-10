execute store result score temp.x_motion temp run data get entity @s Pos[0] 10
execute store result score temp.z_motion temp run data get entity @s Pos[2] 10

scoreboard players set flag temp 0

execute if score temp.x_motion temp matches ..8685 run scoreboard players set flag temp 1
execute if score temp.x_motion temp matches ..8685 run scoreboard players set temp.x_motion temp 9004
execute if score temp.x_motion temp matches 9005.. run scoreboard players set flag temp 1
execute if score temp.x_motion temp matches 9005.. run scoreboard players set temp.x_motion temp 8686


execute if score temp.z_motion temp matches ..-1885 run scoreboard players set flag temp 1
execute if score temp.z_motion temp matches ..-1885 run scoreboard players set temp.z_motion temp -1566
execute if score temp.z_motion temp matches -1565.. run scoreboard players set flag temp 1
execute if score temp.z_motion temp matches -1565.. run scoreboard players set temp.z_motion temp -1884
# -155 -189
scoreboard players set -1 board -1

execute unless score flag temp matches 1 run return fail

execute store result entity @s Pos[0] double 0.1 run scoreboard players get temp.x_motion temp
execute store result entity @s Pos[2] double 0.1 run scoreboard players get temp.z_motion temp

# tellraw @a [{score:{name:temp.x_motion,objective:temp}}," ",{score:{name:temp.z_motion,objective:temp}}]