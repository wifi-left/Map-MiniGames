##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
title @s[team=!play.hotpot] title [{"text":"Hot Potato","color":"#5ed3ff","bold": true}]
title @s[team=!play.hotpot] subtitle ["\u00a7rBe Careful !"]
team join wait.hotpot @s
tellraw @a[team=!wait.hotpot] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 已加入 ",{"text":"Hot Potato","color":"#aed3ff","bold": true}," \u00a77!"]
scoreboard players set wait.player tick 0
execute as @a[team=wait.hotpot,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n\u00a7a    Welcome to ",{"text":"Hot Potato","color":"#aed3ff","bold": true},"\n\n    \u00a7b游戏规则：\n\u00a7a    游戏开始后，一名玩家会持有 “Hot Potato”，他需要将它\n传给其他人。倒计时结束，持有者死亡。最后死亡者获胜！\n"]
tellraw @a[team=wait.hotpot] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
#tp @s 14 3 -44 180 0
tp @s -66 60 -83 90 0
playsound entity.player.levelup player @s 14 3 -44 1 1 1
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
