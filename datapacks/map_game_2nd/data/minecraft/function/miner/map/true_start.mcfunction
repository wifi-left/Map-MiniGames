gamemode survival @s
# scoreboard players set miner.state state 3
title @s title ["\u00a7a游戏开始！"]
title @s subtitle ["请开始挖掘！"]
execute as @s[tag=GOABLE.SPEC] run gamemode spectator @s
