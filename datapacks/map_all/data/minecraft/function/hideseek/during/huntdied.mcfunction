##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§e你复活了。"]
tellraw @a[team=hide.play.hun] [{"selector":"@s"},"§c 死了。"]
tellraw @a[team=hide.play.ani] [{"selector":"@s"},"§c 死了。"]
clear @s
scoreboard players reset @s die
team join hide.play.hun @s

execute if score hide.state state matches 2.. run function minecraft:hideseek/starting/joinhun
execute if score hide.state state matches 2.. run return 0

# function hideseek/during/hunitem

function minecraft:hideseek/during/hun_tp
xp set @s 0 levels
xp set @s 0 points

advancement grant @s only games/hide_hunter_died
