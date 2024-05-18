tag @e[tag=cloud.place.tobetp,limit=1,sort=random] add cloud.sel
tp @s @e[tag=cloud.sel,limit=1]

execute at @s run function cloud/buildglass
execute at @s run tp @s ~ ~10 ~
gamemode adventure @s

team join play.sw @s
tag @e[tag=cloud.sel] remove cloud.place.tobetp
tag @e[tag=cloud.sel] remove cloud.sel
title @s title ["\u00a7f\u00a7lCloudwars"]
title @s subtitle ["\u00a7e游戏将会在\u00a7c10s\u00a7e后开始！"]