##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 1 1
tp @s 74 115 34 0 0
tag @s remove chest.white
tag @s remove chest.black
team leave @s
clear @s
effect clear @s
tellraw @s ["\u00a77欢迎来到活动广场。"]
tellraw @a ["\u00a7a\u00a7l[棋类游戏] ",{"selector":"@s","color":"gold"},"\u00a7b 退出队列。"]
team join lobby @s

