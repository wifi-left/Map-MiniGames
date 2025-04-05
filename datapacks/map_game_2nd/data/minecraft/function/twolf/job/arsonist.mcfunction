##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function twolf/tips/arsonist
tellraw @s ["§a你的身份是：§6§l纵火犯\n§c为保证游戏公平请不要告诉别人。请仅在发言阶段说话。"]
scoreboard players set @s LRS_JOB 3
team join wolfpeople
title @s title ["\u00a7a\u00a7l纵火犯"]
title @s subtitle ["\u00a7f这是你的身份"]

