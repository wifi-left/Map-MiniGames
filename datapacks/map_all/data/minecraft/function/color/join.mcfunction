##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s[team=!play.color] title [{"text":"Color Blindness Game","color":"#009966","bold": true}]
title @s[team=!play.color] subtitle ["\u00a7rShine your eyes !"]
team join wait.color @s
tellraw @a[team=!wait.color] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 已加入 ",{"text":"Color Blindness Game","color":"#009966","bold": true}," \u00a77!"]
scoreboard players set wait.player tick 0
execute as @a[team=wait.color,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n\u00a7a    Welcome to ",{"text":"Color Blindness Game","color":"#009966","bold": true},"\n\n\u00a7e    游戏介绍：\n    \u00a77游戏开始后，方块将会随机开始变化。\n\u00a7e    你需要在规定时间踩到指定方块上。\n\u00a7a    方块在物品栏第九格位置。\n"]
tellraw @a[team=wait.color] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
tp @s -32 28 33 0 0

playsound entity.player.levelup player @s -32 28 33 1 1 1
clear @s
effect clear @s
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
