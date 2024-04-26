tp @s 406 1 -431 -90 0
team join hide.wait
title @s title ["\u00a7b\u00a7l方块躲猫猫"]
title @s subtitle ["\u00a7a猜猜我是谁？"]
playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
clear @s
effect clear @s
effect give @s instant_health 2 25 true
tellraw @a [{"selector":"@s"},"\u00a7a 加入了\u00a7b方块躲猫猫\u00a7a游戏。"]
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
scoreboard players reset @s die
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator