schedule clear random_parkour/map/next_move
# /fill 12 -62 247 100 -45 211
scoreboard players set random_parkour.x board 17
scoreboard players set random_parkour.y board -62
scoreboard players set random_parkour.z board 229
execute store result score random_parkour.step board run random value 150..300
# 记录点：首个记录点落在起点之后第 40~60 段（cpstep 是 step 的阈值，step 递减到 <= cpstep 时就铺平台）
execute store result score random_parkour.tempc temp run random value 40..60
scoreboard players operation random_parkour.cpstep board = random_parkour.step board
scoreboard players operation random_parkour.cpstep board -= random_parkour.tempc temp
scoreboard players set random_parkour.waybackx temp 0
scoreboard players set random_parkour.waybackz temp 0
kill @e[tag=random_parkour.move]
execute in parkourworld positioned 17 -62 229 run summon marker ~ ~ ~ {Tags:["random_parkour.move"]}
execute as @e[tag=random_parkour.move,limit=1] at @s run function minecraft:random_parkour/map/move/move_main

fill 13 -62 230 15 -62 228 emerald_block strict
setblock 14 -62 229 gold_block strict