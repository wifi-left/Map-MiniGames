##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s[team=hide.wait2] run function hide2/join
execute as @s[team=hide.runner] run function hide2/during/runnerdied
execute as @s[team=hide.killer] run function hide2/during/killerdied
