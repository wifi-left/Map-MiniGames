##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join wait.sw @a[team=play.sw]
gamemode spectator @a[team=wait.sw]
scoreboard players set sw.state state 100
function minecraft:cloud/reset
tellraw @a ["§a§l[MESSAGE] §f云端争霸§a游戏开始。"]
