scoreboard players set finder.state state 2
scoreboard players set finder.time tick 6
tellraw @a[team=finder] ["\n \u00a7b\u00a7l彩蛋猎人\u00a76：寻找地图中藏起来的彩蛋！！\n"]
execute as @a[team=finder] run function minecraft:finder/map/p_ready_to_start