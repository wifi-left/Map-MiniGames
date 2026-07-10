##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
tellraw @s ["§c很抱歉，游戏已经开始！请等待下一局。"]

execute in lobby run tp @s 290 -55 291 90 0

execute as @s[tag=!GLOBAL.SPEC] run function minecraft:stronghold/game/normal_equipment