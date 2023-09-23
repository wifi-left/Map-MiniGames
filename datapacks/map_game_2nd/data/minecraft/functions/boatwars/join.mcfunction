tellraw @s ["\n\u00a7e游戏公开测试中...遇到BUG请及时反馈！\n"]
title @s title [{"text":"\u00a7b\u00a7lBoat Wars","color":"#F28500"}]
title @s subtitle ["\u00a77Shoot them down!"]
gamemode adventure @s
execute in airworld run tp @s 591 1 -6 0 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
team join btw.wait
effect clear @s
effect give @s instant_health 1 25 true
clear @s
scoreboard players reset @s btw.boattype
scoreboard players reset @s btw.gunspeed
scoreboard players reset @s btw.coin