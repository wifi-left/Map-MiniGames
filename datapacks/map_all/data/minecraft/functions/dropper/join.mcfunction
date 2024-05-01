##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in dropperworld run teleport @s 19 -59 57 180 0
playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
title @s title ["\u00a7a\u00a7lDropper"]
title @s subtitle ["\u00a7b星跳水立方"]
tellraw @s ["\n   \u00a7d ★ \u00a7b星跳水立方\n\n\u00a7a    想办法从平台顶端到达平台底端！并且寻找传送门进入下一关。\n"]
tellraw @a ["\u00a7b[Game] ",{"selector":"@s"},"\u00a7d 加入了\u00a7a星跳水立方\u00a7d游戏。"]
team join dropper
clear @s

tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
