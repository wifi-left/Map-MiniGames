##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\u00a7e你复活了。"]
tellraw @a[team=hide.runner] [{"selector":"@s"},"\u00a7c 死了。"]
tellraw @a[team=hide.killer] [{"selector":"@s"},"\u00a7c 死了。"]
clear @s
scoreboard players reset @s die
function hide2/during/hunitem
# tp @s 413 69 -329 90 0
xp set @s 0 levels
xp set @s 0 points
tp @s 139 59 -135 180 0

