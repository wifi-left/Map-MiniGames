##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join play.parkour @a[team=wait.parkour]
tp @a[team=play.parkour] -6 3 41 -90 0
scoreboard players set park.state state 1
tellraw @a ["§a[INFO] §bParkour Race §a开始了！"]
execute as @a[team=play.parkour] at @s run playsound minecraft:entity.ender_dragon.growl player @s

