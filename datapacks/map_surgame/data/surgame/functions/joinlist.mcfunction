##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n\u00a7e   游戏正在进行重置，您已加入等待队列。\n"]
title @s times 0 200 0
title @s title ["\u00a7e重置地图中..."]
title @s subtitle ["\u00a7a等待响应..."]
gamemode spectator @s
