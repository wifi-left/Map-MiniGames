## Effects
execute if score speed lobby.effect matches 1..1 run effect give @a[team=lobby,tag=!parkouring,tag=!mazing] speed 1 0 true
execute if score speed lobby.effect matches 2..2 run effect give @a[team=lobby,tag=!parkouring,tag=!mazing] speed 1 1 true
execute if score jump lobby.effect matches 1..1 run effect give @a[team=lobby,tag=!parkouring,tag=!mazing] jump_boost 1 1 true
execute if score jump lobby.effect matches 2..2 run effect give @a[team=lobby,tag=!parkouring,tag=!mazing] jump_boost 1 3 true
execute run effect give @a[team=lobby,tag=mazing] speed 1 0 true


## Back to the Lobby
effect give @a[team=lobby] resistance 1 127 true
kill @e[type=tnt]
scoreboard players enable @a hub
tag @a[scores={hub=1..}] add NEWENTER1
title @a[tag=NEWENTER1] reset
execute as @a[scores={hub=1..}] run tellraw @a ["\u00a7a\u00a7l[MESSAGE] \u00a77",{"selector":"@s","color":"yellow"},"\u00a7b 返回了大厅。"]
execute as @a[scores={hub=1..}] run bossbar set surgame:time players
scoreboard players reset @a[scores={hub=1..}] hub
tag @a[scores={hub=1..}] remove sur.killedbyzom
execute as @a[tag=NEWENTER1] at @s run attribute @s minecraft:generic.attack_speed base set 4
tag @a[tag=NEWENTER1] remove zombie.nehelp
tag @a[tag=NEWENTER1] remove parkouring
tag @a[tag=NEWENTER1] remove mazing
tellraw @a[tag=NEWENTER1] ["\n\u00a7a  您可以随时使用 \u00a76/trigger hub \u00a7a返回大厅。\n"]
tellraw @a[tag=NEWENTER1,tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]

execute as @a[tag=NEWENTER1] at @s run effect clear @s

execute in overworld run tp @a[tag=NEWENTER1] 188 124 26 0 0
effect clear @a[tag=NEWENTER1]
title @a[tag=NEWENTER1] title ["\u00a7a\u00a7lMini\u00a7e\u00a7lGames"]
title @a[tag=NEWENTER1] subtitle ["\u00a76You're in \u00a7dMain Lobby"]
title @a[tag=NEWENTER1] actionbar ["\u00a7aWelcome to the map!"]
gamemode adventure @a[tag=NEWENTER1]
execute as @a[tag=NEWENTER1] at @s run attribute @s minecraft:generic.max_health base set 20
team join lobby @a[tag=NEWENTER1]
clear @a[tag=NEWENTER1]
tag @a[tag=NEWENTER1] remove sur.killedbyzom
tag @a[tag=NEWENTER1] remove bw.play
tag @a[tag=NEWENTER1] remove bw.player
tag @a[tag=NEWENTER1] remove boat.notinboat
tag @a[tag=NEWENTER1] remove play.total
tag @a[tag=NEWENTER1] remove NEWENTER1

## Repeling War
tp @a[tag=join.hit] -33 4 -11 0 0
clear @a[tag=join.hit]
gamemode adventure @a[tag=join.hit]
team leave @a[tag=join.hit]
execute as @a[tag=join.hit] run tellraw @a ["\u00a7a\u00a7l[MESSAGE] \u00a77",{"selector":"@s","color":"yellow"},"\u00a77 加入了 \u00a7eRepeling War\u00a77。"]
tellraw @a[tag=join.hit,tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @a[tag=join.hit,tag=GOABLE.SPEC] at @s run gamemode spectator
team join wait.repel @a[tag=join.hit]
execute as @a[tag=join.hit] at @s run attribute @s minecraft:generic.max_health base set 20
execute as @a[tag=join.hit] at @s run effect clear @s
tag @a[tag=join.hit] remove join.hit

