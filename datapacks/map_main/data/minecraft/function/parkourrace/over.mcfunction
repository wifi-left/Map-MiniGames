##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set park.state state 0
tellraw @a ["§a[INFO] §b[Parkour Race] §d游戏结束！"]
gamemode adventure @a[team=play.parkour]
execute as @a[team=play.parkour] run function minecraft:parkourrace/join

