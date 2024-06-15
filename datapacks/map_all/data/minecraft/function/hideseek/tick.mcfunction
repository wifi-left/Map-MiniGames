##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=hide.play.ani] at @s run function hideseek/follow
execute as @a[team=hide.play.ani] at @s run kill @e[type=item,distance=0..8]
execute as @a[team=hide.play.hun] at @s run kill @e[type=item,distance=0..8]
execute as @a[scores={die=1..},team=hide.play.ani] run function hideseek/during/anidied
execute as @a[scores={die=1..},team=hide.play.hun] run function hideseek/during/huntdied
