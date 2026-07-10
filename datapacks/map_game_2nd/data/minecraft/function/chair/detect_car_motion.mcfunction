execute store result score temp.x_motion temp run data get entity @s Motion[0] 10
execute store result score temp.y_motion temp run data get entity @s Motion[1] 10
execute store result score temp.z_motion temp run data get entity @s Motion[2] 10


execute store result score temp.x temp run data get entity @s Pos[0] 10
execute store result score temp.y temp run data get entity @s Pos[1] 10
execute store result score temp.z temp run data get entity @s Pos[2] 10
# -410-
execute if score temp.z temp matches ..-4108 at @s run tp @s ~ ~ -378
execute if score temp.z temp matches -3772.. at @s run tp @s ~ ~ -411

execute if score temp.x temp matches ..-1828 at @s run tp @s -150 ~ ~
execute if score temp.x temp matches -1492.. at @s run tp @s -183 ~ ~


execute if score temp.x_motion temp matches -1..1 if score temp.y_motion temp matches -1..1 if score temp.z_motion temp matches -1..1 run return run function minecraft:chair/make_car_motion