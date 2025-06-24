##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:admin/main
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a ["§a地图已关闭管理员开始游戏模式！现在任何人都可开始游戏！"]
scoreboard players set map.playmode board 0
