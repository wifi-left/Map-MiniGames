tellraw @a[team=!car.wait] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 加入了 ",{"text":"赛猪","color":"#00f7ff","bold": true}," \u00a77!"]
title @s title [{"text":"赛猪","color":"#00f7ff","bold": true}]
title @s subtitle ["Modified from ",{"text":"Car Race","color":"#009966","bold": true}]
team join car.wait
scoreboard players set wait.player tick 0
execute as @a[team=car.wait,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @a[team=car.wait] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
tp @s 148.0 96 8.0 0 0
function car_race/introduct
clear @s
effect clear @s
tag @s remove car.win
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
advancement grant @s only games/recovered_game
