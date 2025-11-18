##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s title [{"text":"Battle Box","color":"white","bold": true}]
title @s subtitle ["\u00a7f与对方开启抢夺羊毛大作战！"]
gamemode adventure @s[gamemode=spectator]
team join wait.battle @s
tellraw @a[team=!wait.battle] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"Battle Box","color":"white","bold":true}," §7!"]
scoreboard players set wait.player tick 0
execute as @a[team=wait.battle,gamemode=adventure] run scoreboard players add wait.player tick 1

tellraw @a[team=wait.battle] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"},"§b/§e8§b)"]
#tp @s 14 3 -44 180 0
playsound entity.player.levelup player @s 144 28 -397 1 1 1
clear @s
effect clear @s
tp @s 144 28 -397 0 0
tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator

execute if score battle.state state matches 1.. run function minecraft:battle/spec


