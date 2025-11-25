##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## Effects
execute if score speed lobby.effect matches 1 run effect give @a[team=lobby,tag=!parkouring,tag=!mazing] speed 1 0 true
execute if score speed lobby.effect matches 2 run effect give @a[team=lobby,tag=!parkouring,tag=!mazing] speed 1 1 true
execute if score jump lobby.effect matches 1 run effect give @a[team=lobby,tag=!parkouring,tag=!mazing] jump_boost 1 1 true
execute if score jump lobby.effect matches 2 run effect give @a[team=lobby,tag=!parkouring,tag=!mazing] jump_boost 1 3 true
execute run effect give @a[team=lobby,tag=mazing] speed 1 0 true


## Back to the Lobby
effect give @a[team=lobby] resistance 1 127 true
execute as @e[type=tnt,nbt={fuse:80s}] at @s run function minecraft:lobby/tntremove
scoreboard players enable @a hub
scoreboard players enable @a rejoin

tag @a[scores={rejoin=1..}] add REJOINGAME
execute as @a[tag=REJOINGAME] run function lobby/rejoin
scoreboard players reset @a[tag=REJOINGAME] rejoin
tag @a[tag=REJOINGAME] remove REJOINGAME

tag @a[scores={hub=1..}] add NEWENTER1
execute as @a[tag=NEWENTER1] unless score @s park.uuid matches 0.. run function minecraft:actions/getuuid

title @a[tag=NEWENTER1] reset
execute as @a[scores={hub=1..}] run tellraw @a ["§a§l[MESSAGE] §7",{"selector":"@s","color":"yellow"},"§b 返回了大厅。"]

execute as @a[scores={hub=1..}] run bossbar set surgame:time players
scoreboard players reset @a[scores={hub=1..}] hub
scoreboard players reset @a[scores={hub=1..}] globle.game
tag @a[scores={hub=1..}] remove sur.killedbyzom
team join lobby @a[tag=NEWENTER1]
tag @a[tag=NEWENTER1] remove tntwars.a
tag @a[tag=NEWENTER1] remove tntwars.b
tag @a[tag=NEWENTER1] remove bw.shears
execute as @a[tag=NEWENTER1] at @s run attribute @s minecraft:attack_speed base set 4
tag @a[tag=NEWENTER1] remove zombie.nehelp
tag @a[tag=NEWENTER1] remove parkouring
effect clear @a[tag=NEWENTER1]
stopsound @a[tag=NEWENTER1] record
stopsound @a[tag=NEWENTER1] voice
tag @a[tag=NEWENTER1] remove mazing
tellraw @a[tag=NEWENTER1] ["\n§a  您可以随时使用 §6/trigger hub §a返回大厅。\n  §a全局音乐可以通过§6游戏设置 - ",{translate:"options.sounds",color:gold,fallback:"声音设置"},{text:" - ",color:gold},{translate:"soundCategory.voice",color:gold,fallback:"玩家语音"},"§a调节声音大小\n"]
tellraw @a[tag=NEWENTER1,tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @a[tag=NEWENTER1] run attribute @s max_health base set 20
execute as @a[tag=NEWENTER1] at @s run effect clear @s
execute in overworld run tp @a[tag=NEWENTER1] 188 124 26 0 0
effect clear @a[tag=NEWENTER1]
title @a[tag=NEWENTER1] title ["\u00a7a\u00a7lMini\u00a7e\u00a7lGames"]
title @a[tag=NEWENTER1] subtitle ["\u00a76You're in \u00a7dMain Lobby"]
title @a[tag=NEWENTER1] actionbar ["\u00a7aWelcome to the map!"]
gamemode adventure @a[tag=NEWENTER1]
execute as @a[tag=NEWENTER1] at @s run attribute @s minecraft:max_health base set 20

clear @a[tag=NEWENTER1]
execute as @a[tag=NEWENTER1] at @s run function lobby/cleartags
execute as @a[tag=NEWENTER1] run function lobby/oneword
tag @a[tag=NEWENTER1] remove NEWENTER1

## Repeling War
tp @a[tag=join.hit] -33 4 -11 0 0
clear @a[tag=join.hit]
gamemode adventure @a[tag=join.hit]
team leave @a[tag=join.hit]
execute as @a[tag=join.hit] run tellraw @a ["§a§l[MESSAGE] §7",{"selector":"@s","color":"yellow"},"§7 加入了 §eRepeling War§7。"]
tellraw @a[tag=join.hit,tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @a[tag=join.hit,tag=GLOBAL.SPEC] at @s run gamemode spectator
team join wait.repel @a[tag=join.hit]
execute as @a[tag=join.hit] at @s run attribute @s minecraft:max_health base set 20
execute as @a[tag=join.hit] at @s run effect clear @s
tag @a[tag=join.hit] remove join.hit



