##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set park.state state 0
tellraw @a ["\u00a7a[INFO] \u00a7b[Parkour Race] \u00a7d游戏结束！"]
gamemode adventure @a[team=play.parkour]
execute as @a[team=play.parkour] run function minecraft:parkourrace/join
