##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
#
execute as @a[team=hide.runner] at @s run kill @e[type=item,distance=0..10]
execute as @a[team=hide.killer] at @s run kill @e[type=item,distance=0..10]

clear @a[team=hide.runner] glass_bottle
clear @a[team=hide.killer] glass_bottle
