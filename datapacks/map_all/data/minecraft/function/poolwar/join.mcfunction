##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=!pw.wait] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 加入了 ",{"text":"冬泳怪鸽","color":"#1E90FF","bold": true}," \u00a77!"]
team join pw.wait
scoreboard players set wait.player tick 0
execute as @a[team=pw.wait,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @a[team=pw.wait] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
tp @s -93 20 -10 0 0
function poolwar/introduct
clear @s
effect clear @s
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
scoreboard players set @s pw.max 120
