##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s remove killer.tobeassained
tag @s add killer.killer
tellraw @s ["\n§b§l密室杀手 ＞ §6你的身份是：§c§l杀手\n§a杀死其他非杀手玩家，即可胜利。\n§b小心警探！\n"]
title @s title ["\u00a76身份：\u00a7c杀手"]
title @s subtitle ["\u00a7r杀死其他非杀手玩家"]