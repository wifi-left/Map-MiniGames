##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in minecraft:airworld run tp @s -40 182 -116 0 0
execute as @s at @s run playsound entity.player.levelup player @s
xp set @s 0 levels
xp set @s 0 points
title @s title ["\u00a79生存游戏"]
title @s subtitle ["\u00a77Survival game"]
tellraw @a [{"selector":"@s"},"\u00a7a 加入了\u00a79生存游戏\u00a7a队列。"]
team join wait.sur
gamemode adventure @s[gamemode=survival]
bossbar set surgame:time players @a[team=wait.sur]
clear @s
effect clear @s
execute if score sur.state state matches 1 run function surgame:spec
execute if score sur.state state matches 2 run function surgame:joinlist
execute if score sur.state state matches 3 run function surgame:spec
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
