##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n \u00a7e※ \u00a7c「TNT Wars」\n\n\u00a7e    \u00a76游戏规则\n\n\u00a7b    游戏开始后，玩家将被分为两组。\n\u00a7b    一定的时间后会生成物资（TNT投掷蛋）\n\u00a7b    使用此道具向对方投掷TNT，将对方\u00a7l扔下虚空\u00a7b！\n"]
title @s title ["\u00a7c\u00a7lTNT Wars"]
title @s subtitle ["\u00a7fBoom Boom Boom!"]
tp @s 502 20 240 0 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1

team join wait.tntwars

tag @s remove tntwars.a
tag @s remove tntwars.b
gamemode adventure @s
clear @s
xp set @s 0 levels
xp set @s 0 points

tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
