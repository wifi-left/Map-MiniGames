##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set @s LRS_JOB 6
tellraw @s ["§a你的身份是：§6§l预言家\n§c为保证游戏公平请不要告诉别人。请仅在发言阶段说话。"]
team join wolfpeople
function twolf/tips/predictor
title @s title ["\u00a7a\u00a7l预言家"]
title @s subtitle ["\u00a7f这是你的身份"]

