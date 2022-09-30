playsound entity.experience_orb.pickup player @s 75 13 94 100 1 1
gamemode adventure @s
tp @s 64 16 89 90 0
team join Who_Killer_Text @s
tellraw @a ["\u00a7c\u00a7l[狼人杀] ",{"selector":"@s"}," \u00a7a加入。"]
execute if score wolf.state state matches 1.. run function minecraft:small_games/wolf/spec
title @s title ["\u00a7c\u00a7lWolf Killer"]
title @s subtitle ["\u00a7aThe classical text game."]
tag @s remove lrs.out
tag @s remove taged
effect clear @s
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77你在本游戏中可以看到所有玩家的职业信息，\u00a7c\u00a7l请不要透露破坏游戏体验\u00a77，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator