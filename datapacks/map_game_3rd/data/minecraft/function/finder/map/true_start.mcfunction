# scoreboard players set miner.state state 3
title @s title ["\u00a7a游戏开始！"]
title @s subtitle ["请开始寻找彩蛋！"]
execute as @s[tag=GLOBAL.SPEC] run gamemode spectator @s
xp set @s 0 levels
xp set @s 0 points
tellraw @a[team=finder] ["\u00a7e\u00a7l温馨提示：\u00a7f使用\u00a7b鼠标左键/右键\u00a7f获取彩蛋。"]

function minecraft:finder/map/make_egg