##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s title ["\u00a7c你死了"]
clear @s
effect clear @s
team join wait.jobpvp @s
title @s subtitle ["\u00a7e你复活在了大厅！"]
scoreboard players reset @s JOBPVP.die
