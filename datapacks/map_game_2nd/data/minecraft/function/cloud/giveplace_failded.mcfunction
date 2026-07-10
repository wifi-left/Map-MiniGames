##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
team join play.sw @s
title @s title ["\u00a7f\u00a7lCloudwars"]
title @s subtitle ["\u00a7e游戏将会在\u00a7c10s\u00a7e后开始！"]
tp @s 688 40 353 0 90
tellraw @a[tag=sw.msg] [{"selector":"@s"},"§c 因为位置不够，所以成为旁观者。"]
tellraw @s[tag=play.total] ["\u00a7e为了补偿您，您将获得1分作为奖励。"]
execute as @s run function minecraft:small_games/total/win_score {score:1}

execute unless score sw.state state matches 1.. run function minecraft:cloud/join
