function twolf/tips/guard
tellraw @s ["\u00a7a你的身份是：\u00a76\u00a7l守卫\n\u00a7c为保证游戏公平请不要告诉别人。请仅在发言阶段说话。"]
team join wolfpeople
scoreboard players set @s LRS_JOB 2
title @s title ["\u00a7a\u00a7l守卫"]
title @s subtitle ["\u00a7f这是你的身份"]