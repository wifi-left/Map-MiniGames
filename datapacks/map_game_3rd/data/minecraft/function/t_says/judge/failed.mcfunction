##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=t_says] [{"selector":"@s"},"§c 失败了！"]
tag @s add t_says.failed
execute at @s run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
title @s title ["\u00a7c你失败了"]
title @s subtitle ["你没能按照规则进行游戏"]
clear @s *[!custom_data~{"douzi":1}]
