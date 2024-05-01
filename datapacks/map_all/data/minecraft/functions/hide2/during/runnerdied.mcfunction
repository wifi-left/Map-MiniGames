##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset @s die
tellraw @a[team=hide.runner] [{"selector":"@s"},"\u00a7c 被找到了。"]
tellraw @a[team=hide.killer] [{"selector":"@s"},"\u00a7c 被找到了。"]
tellraw @s ["\u00a7e你被找到了，所以你淘汰了。"]

clear @s
gamemode spectator @s
# team join hide.play.hun
# function hideseek/during/hunitem
xp set @s 0 levels
xp set @s 0 points
tp @s 139 59 -135 180 0
title @s title ["\u00a7c你淘汰了"]
title @s subtitle ["\u00a7f你被找到了"]
