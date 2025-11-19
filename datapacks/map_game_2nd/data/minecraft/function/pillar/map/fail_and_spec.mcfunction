##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s remove pillar.sel
tag @s remove pillar.random_team

gamemode spectator @s
title @s title ["\u00a7e\u00a7l幸运之柱"]
title @s subtitle ["\u00a7c很抱歉！因为位置不够，所以您成为了旁观者。"]
tp @s -96 37 613 0 90

tellraw @a[tag=pillar] [{"selector":"@s"},"§c 因为位置不够，所以成为旁观者。"]
tellraw @s[tag=play.total] ["\u00a7e为了补偿您，您将获得1分作为奖励。"]
execute as @s run function minecraft:small_games/total/win_score {score:1}

# execute unless score pillar.state state matches 1.. run function minecraft:cloud/join
