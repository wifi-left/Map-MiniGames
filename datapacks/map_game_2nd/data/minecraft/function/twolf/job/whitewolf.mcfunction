##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set @s LRS_JOB 4
tag @s add wolf.white
tellraw @s ["§a你的身份是：§6§l白狼王\n§c为保证游戏公平请不要告诉别人。请仅在发言阶段说话。"]
team join wolfpeople
function twolf/tips/whitewolf
title @s title ["\u00a7c\u00a7l白狼王"]
title @s subtitle ["\u00a7f这是你的身份"]

