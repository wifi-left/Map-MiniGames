gamemode survival @s
# scoreboard players set miner.state state 3
title @s title ["\u00a7a游戏开始！"]
title @s subtitle ["请开始挖掘！"]
function minecraft:mining/g_item
execute as @s[tag=GLOBAL.SPEC] run gamemode spectator @s
xp set @s 0 levels
xp set @s 0 points