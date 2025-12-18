tp @s ~ 146 ~ 0 90
function minecraft:miner/map/paint_pillar
tag @s remove miner.random_team
title @s title ["\u00a72\u00a7l一掘到底"]
title @s subtitle ["\u00a7c请注意！游戏即将开始！"]
# effect give @s slowness 5 127 true
gamemode adventure @s
execute as @s[tag=GLOBAL.SPEC] run gamemode spectator @s
spawnpoint @s -59 157 576 0 0