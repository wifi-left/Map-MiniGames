##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 1 1
tp @s 74 115 34 0 0
tag @s remove chest.white
tag @s remove chest.black
team leave @s
clear @s
effect clear @s
tellraw @s ["§7欢迎来到活动广场。"]
tellraw @a ["§a§l[棋类游戏] ",{"selector":"@s","color":"gold"},"§b 退出队列。"]
team join lobby @s


