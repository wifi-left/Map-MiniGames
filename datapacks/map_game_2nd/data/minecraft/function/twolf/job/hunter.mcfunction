##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set @s LRS_JOB 9
tellraw @s ["§a你的身份是：§6§l猎人\n§c为保证游戏公平请不要告诉别人。请仅在发言阶段说话。"]
team join wolfpeople
function twolf/tips/hunter
title @s title ["\u00a7a\u00a7l猎人"]
title @s subtitle ["\u00a7f这是你的身份"]

