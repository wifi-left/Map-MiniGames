##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n§b§l密室杀手 ＞ §6你的身份是：§b§l警探\n§a找出杀手，击杀它即可胜利。\n"]
tag @s add killer.saver
tag @s add killer.runner

tag @s remove killer.tobeassained
title @s title ["\u00a76身份：\u00a7b警探"]
title @s subtitle ["\u00a7r找出杀手，击杀Ta"]