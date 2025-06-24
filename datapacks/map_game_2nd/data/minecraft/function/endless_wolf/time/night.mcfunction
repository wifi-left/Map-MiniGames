##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players operation endwolf.time board = endwolf.night state
team modify play.endwolf friendlyFire true
scoreboard players set endwolf.state state 2

execute as @a[team=play.endwolf,tag=endless.vampire] at @s run function minecraft:endless_wolf/vampire_item
time set midnight
title @a[team=play.endwolf] title ["\u00a7c黑夜降临"]
title @a[team=play.endwolf] subtitle ["\u00a76吸血鬼不再会被暴晒..."]

tellraw @a[team=play.endwolf] ["§c天黑了。"]
tellraw @a[team=wait.endwolf] ["§c天黑了。"]
