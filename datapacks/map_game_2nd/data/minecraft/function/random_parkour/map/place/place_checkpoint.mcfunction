# 记录点平台：3×3 羊毛 + 中心金块 + 四周楼梯（风格对齐终点平台 move_over）
# 调用位置与 place_main 相同（生成 marker 脚下），调用前已确认平台能完整落进跑酷区域
fill ~-1 ~ ~-1 ~1 ~ ~1 lime_wool
setblock ~ ~ ~ gold_block
fill ~-2 ~ ~-1 ~-2 ~ ~1 ladder[facing=west] replace air strict
fill ~2 ~ ~-1 ~2 ~ ~1 ladder[facing=east] replace air strict
fill ~-1 ~ ~-2 ~1 ~ ~-2 ladder[facing=north] replace air strict
fill ~-1 ~ ~2 ~1 ~ ~2 ladder[facing=south] replace air strict

# 下一个记录点：再隔 40~60 段（与 random_parkour.step 同一计数单位）
execute store result score random_parkour.tempc temp run random value 40..60
scoreboard players operation random_parkour.cpstep board = random_parkour.step board
scoreboard players operation random_parkour.cpstep board -= random_parkour.tempc temp

# place_main 在这里 return 了，所以顺手做一次它末尾的物品清理
kill @e[distance=..5,type=item]
