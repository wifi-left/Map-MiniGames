scoreboard players set random_parkour.state state 2
scoreboard players set random_parkour.time tick 6
tellraw @a[team=random_parkour] ["\n \u00a72\u00a7l随机跑酷\u00a76：跑到终点（青晶石块）\n"]
# 记录点：每轮开始清空（与本轮新生成的记录点对应）
scoreboard players reset @a[team=random_parkour] park.x
scoreboard players reset @a[team=random_parkour] park.y
scoreboard players reset @a[team=random_parkour] park.z
function minecraft:random_parkour/map/init_move
execute as @a[team=random_parkour,gamemode=adventure] in parkourworld run tp @s 11 -61 229 -90 0
