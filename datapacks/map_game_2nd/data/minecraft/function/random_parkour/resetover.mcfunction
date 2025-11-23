scoreboard players set random_parkour.state state 2
scoreboard players set random_parkour.time tick 6
tellraw @a[team=random_parkour] ["\n \u00a72\u00a7l随机跑酷\u00a76：跑到终点（青晶石块）\n"]
function minecraft:random_parkour/map/init_move
execute as @a[team=random_parkour,gamemode=adventure] in parkourworld run tp @s 11 -61 229 -90 0
