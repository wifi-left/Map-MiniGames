tag @e[tag=cloud.place.tobetp,limit=1,sort=random] add cloud.sel
execute unless entity @e[tag=cloud.sel] run tellraw @s ["\u00a7c很抱歉！无法为您分配到位置。"]
execute unless entity @e[tag=cloud.sel] run function minecraft:cloud/giveplace_failded
execute unless entity @e[tag=cloud.sel] run return 0
tp @s @e[tag=cloud.sel,limit=1]

execute at @s run function cloud/buildglass
execute at @s run tp @s ~ ~10 ~
gamemode adventure @s

team join play.sw @s
tag @e[tag=cloud.sel] remove cloud.place.tobetp
tag @e[tag=cloud.sel] remove cloud.sel
title @s title ["\u00a7f\u00a7lCloudwars"]
title @s subtitle ["\u00a7e游戏将会在\u00a7c10s\u00a7e后开始！"]