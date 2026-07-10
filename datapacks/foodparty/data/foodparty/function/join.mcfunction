##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s title ["\u00a7e\u00a7lFOOD CARNIVAL: \u00a7b\u00a7lPARTY"]
title @s subtitle ["\u00a7a美食嘉年华：美食派对"]
team join foodparty
tellraw @a [{"selector":"@s"},"§b 加入了「§a美食嘉年华：美食派对§b」"]
tellraw @s ["\n§e§l   FOOD CARNIVAL: §b§lPARTY\n§e§l   美食嘉年华：§b§l美食派对\n\n   §d游戏规则：\n   §a寻找材料，制作美食，进行评分！让顾客吃得满意，吃得放心。\n"]
tp @s 213 80 160 0 0
playsound entity.generic.explode player @s 213 80 160 1 2 1
clear @s
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

