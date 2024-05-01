##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s title ["\u00a7e\u00a7lFOOD CARNIVAL: \u00a7b\u00a7lPARTY"]
title @s subtitle ["\u00a7a美食嘉年华：美食派对"]
team join foodparty
tellraw @a [{"selector":"@s"},"\u00a7b 加入了「\u00a7a美食嘉年华：美食派对\u00a7b」"]
tellraw @s ["\n\u00a7e\u00a7l   FOOD CARNIVAL: \u00a7b\u00a7lPARTY\n\u00a7e\u00a7l   美食嘉年华：\u00a7b\u00a7l美食派对\n\n   \u00a7d游戏规则：\n   \u00a7a寻找材料，制作美食，进行评分！让顾客吃得满意，吃得放心。\n"]
tp @s 213 80 160 0 0
playsound entity.generic.explode player @s 213 80 160 1 2 1
clear @s
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
