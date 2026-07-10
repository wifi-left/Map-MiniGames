##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:admin/main
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a ["§c地图已启用管理员开始游戏模式！现在仅管理员可开始游戏！\n§7(单人游戏不受影响)"]
scoreboard players set map.playmode board 1
