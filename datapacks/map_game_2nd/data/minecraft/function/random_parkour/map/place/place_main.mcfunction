# 记录点：到点、且平台（含四周楼梯 x±2 / z±2）能完整落进跑酷区域才铺，否则顺延到下一段
execute if score random_parkour.step board <= random_parkour.cpstep board if score random_parkour.x board matches 16..100 if score random_parkour.z board matches 214..244 run return run function minecraft:random_parkour/map/place/place_checkpoint

# setblock ~ ~ ~ emerald_block
execute store result score random_parkour.rancolor temp run random value 1..16
# setblock ~ ~1 ~ minecraft:white_wool strict
setblock ~ ~ ~ minecraft:white_wool strict
execute if score random_parkour.rancolor temp matches 2 run setblock ~ ~ ~ minecraft:orange_wool strict
execute if score random_parkour.rancolor temp matches 3 run setblock ~ ~ ~ minecraft:magenta_wool strict
execute if score random_parkour.rancolor temp matches 4 run setblock ~ ~ ~ minecraft:light_blue_wool strict
execute if score random_parkour.rancolor temp matches 5 run setblock ~ ~ ~ minecraft:yellow_wool strict
execute if score random_parkour.rancolor temp matches 6 run setblock ~ ~ ~ minecraft:lime_wool strict
execute if score random_parkour.rancolor temp matches 7 run setblock ~ ~ ~ minecraft:pink_wool strict
execute if score random_parkour.rancolor temp matches 8 run setblock ~ ~ ~ minecraft:gray_wool strict
execute if score random_parkour.rancolor temp matches 9 run setblock ~ ~ ~ minecraft:light_gray_wool strict
execute if score random_parkour.rancolor temp matches 10 run setblock ~ ~ ~ minecraft:cyan_wool strict
execute if score random_parkour.rancolor temp matches 11 run setblock ~ ~ ~ minecraft:purple_wool strict
execute if score random_parkour.rancolor temp matches 12 run setblock ~ ~ ~ minecraft:blue_wool strict
execute if score random_parkour.rancolor temp matches 13 run setblock ~ ~ ~ minecraft:brown_wool strict
execute if score random_parkour.rancolor temp matches 14 run setblock ~ ~ ~ minecraft:green_wool strict
execute if score random_parkour.rancolor temp matches 15 run setblock ~ ~ ~ minecraft:red_wool strict
execute if score random_parkour.rancolor temp matches 16 run setblock ~ ~ ~ minecraft:black_wool strict
fill ~-1 ~ ~ ~-1 ~ ~ ladder[facing=west] replace air strict
fill ~1 ~ ~ ~1 ~ ~ ladder[facing=east] replace air strict
fill ~ ~ ~-1 ~ ~ ~-1 ladder[facing=north] replace air strict
fill ~ ~ ~1 ~ ~ ~1 ladder[facing=south] replace air strict
kill @e[distance=..5,type=item]