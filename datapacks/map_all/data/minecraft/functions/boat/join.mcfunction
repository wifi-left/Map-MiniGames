team join boat @s
title @s reset
tellraw @a [{"selector":"@s"},"\u00a7a 加入了\u00a79冰船游戏\u00a7a。"]
title @s title ["\u00a79冰船游戏"]
title @s subtitle ["\u00a7bIce Boat Game"]
tellraw @s ["\u00a79\u00a7l冰船游戏\n\n\u00a76\u00a7l   Builders: \u00a7b\u00a7lDomnick_JYH \u00a7a&\u00a7b wifi_left\n"]
# execute in minecraft:boatworld run tp @s -142 -56 -42 180 0
execute in minecraft:boatworld2 run tp @s -12 146 -43 0 0
playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score boat.state state matches 1.. run function minecraft:boat/spec
effect give @s instant_health 2 25 true

execute if score boat.state state matches 1.. run function boat/spec
xp set @s 0 levels
xp set @s 0 points
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator