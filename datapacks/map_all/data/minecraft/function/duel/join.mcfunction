##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s[team=!play.duel.yellow,team=!play.duel.blue] title [{"text":"Duel Game","color":"yellow","bold": true}]
title @s[team=!play.duel.yellow,team=!play.duel.blue] subtitle ["\u00a7rFight !"]
team join wait.duel @s
tellraw @a[team=!wait.duel] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"Duel Game","color":"yellow","bold":true}," §7!"]
scoreboard players set wait.player tick 0
execute as @a[team=wait.duel,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n§a    Welcome to ",{"text":"Duel Game","color":"yellow","bold":true},"\n"]
tellraw @a[team=wait.duel] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"}," §ePeople§b)"]
#tp @s 14 3 -44 180 0
tp @s -108 77 -88 0 0

execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
clear @s
tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator

