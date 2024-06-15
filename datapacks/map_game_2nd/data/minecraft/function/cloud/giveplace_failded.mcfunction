gamemode spectator @s
team join play.sw @s
title @s title ["\u00a7f\u00a7lCloudwars"]
title @s subtitle ["\u00a7e游戏将会在\u00a7c10s\u00a7e后开始！"]
tp @s 688 40 353 0 90
tellraw @a[tag=sw.msg] [{"selector":"@s"},"\u00a7c 因为位置不够，所以成为旁观者"]
execute unless score sw.state state matches 1.. run function minecraft:cloud/join