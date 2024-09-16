##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s reset

tellraw @a ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 joined \u00a79\u00a7lBedwars\u00a77 ."]
tp @s -302 76 210 0 0
execute if score bw.state state matches 1.. run function bedwars/message/spec
execute if score bw.state state matches ..-1 run tellraw @s ["\n\u00a7e您已加入队列。\n"]
execute if score bw.state state matches -1 run gamemode spectator @s
team join bw.wait @s
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
scoreboard players reset @s bw.team
