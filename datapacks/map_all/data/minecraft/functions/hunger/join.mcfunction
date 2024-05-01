##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join hunger @s
tellraw @a ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"}," \u00a7a加入了小游戏 \u00a74\u00a7l饥饿战争"]
execute in hungerworld run tp @s 141 -49 75 90 0
execute in hungerworld run playsound entity.player.levelup player @s 141 -49 75 10 1 1
tellraw @s ["\n\u00a74\u00a7l ※ 饥饿游戏\n\n\u00a7b    游戏开始后，你将有 1 分钟时间收集资源。1 分钟后 PVP 将被允许，存活到最后的玩家即为获胜者。\n"]
clear @s
effect clear @s
effect give @s instant_health 2 25 true
effect give @s saturation 2 25 true
bossbar set minecraft:hungergame players @a[team=hunger]
title @s title ["\u00a74\u00a7l饥饿游戏"]
title @s subtitle ["\u00a7fHunger Game PVP"]
execute if score hunger.state state matches 1.. run function hunger/spec
xp set @s 0 levels
xp set @s 0 points
spawnpoint @s 101 -60 0
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
