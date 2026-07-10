# scoreboard players set miner.state state 3
title @s title ["\u00a7a游戏开始！"]
title @s subtitle ["小心谨慎！"]
tellraw @s ["\u00a76\u00a7l游戏开始！"]

function minecraft:one_arrow/g_item
execute positioned -79 40 200 run function minecraft:one_arrow/summon_tools
execute as @s[tag=GLOBAL.SPEC] run gamemode spectator @s
xp set @s 0 levels
xp set @s 0 points