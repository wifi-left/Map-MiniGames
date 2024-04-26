title @s[team=!play.duel.yellow,team=!play.duel.blue] title [{"text":"Duel Game","color":"yellow","bold": true}]
title @s[team=!play.duel.yellow,team=!play.duel.blue] subtitle ["\u00a7rFight !"]
team join wait.duel @s
tellraw @a[team=!wait.duel] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 已加入 ",{"text":"Duel Game","color":"yellow","bold": true}," \u00a77!"]
scoreboard players set wait.player tick 0 
execute as @a[team=wait.duel,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n\u00a7a    Welcome to ",{"text":"Duel Game","color":"yellow","bold": true},"\n"]
tellraw @a[team=wait.duel] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
#tp @s 14 3 -44 180 0
tp @s -108 77 -88 0 0

execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
clear @s
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator