##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§e你复活了。"]
tellraw @a[team=hide.play.hun] [{"selector":"@s"},"§c 死了。"]
tellraw @a[team=hide.play.ani] [{"selector":"@s"},"§c 死了。"]
clear @s
scoreboard players reset @s die
execute if score hide.state state matches 2.. run function minecraft:hideseek/starting/joinhun
execute if score hide.state state matches 2.. run return 0

# function hideseek/during/hunitem
team join hide.play.hun

execute if score hideseek.settings.map board matches 1 as @a[team=hide.play.hun] run tp @s 470 2 -362 -180 0
execute if score hideseek.settings.map board matches 2 as @a[team=hide.play.hun] run tp @s 513 -16 -597 180 0

xp set @s 0 levels
xp set @s 0 points

advancement grant @s only games/hide_hunter_died
