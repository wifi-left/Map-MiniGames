##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @s ["§a您已成为游戏地图管理员。"]
tag @s add map.op
function minecraft:admin/admin/manager
