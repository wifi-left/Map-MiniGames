##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @s ["§c您已不再是游戏地图管理员。"]
tag @s add map.op

