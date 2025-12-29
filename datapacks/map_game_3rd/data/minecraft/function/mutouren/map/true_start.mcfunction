# scoreboard players set miner.state state 3
title @s title ["\u00a7a游戏开始！"]
title @s subtitle ["抢先到达终点（绿宝石）！"]
function minecraft:mutouren/g_item
execute as @s[tag=GLOBAL.SPEC] run gamemode spectator @s
xp set @s 0 levels
xp set @s 0 points