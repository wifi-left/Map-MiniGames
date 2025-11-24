##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n§b§l密室杀手 ＞ §6你的身份是：§a§l平民\n§a保护自己，不要被杀死。\n"]
tag @s add killer.runner
tag @s remove killer.tobeassained

title @s title ["\u00a76身份：\u00a7a平民"]
title @s subtitle ["\u00a7r保护自己，不要被杀死"]