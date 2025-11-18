##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s[team=!play.beli] title [{"text":"Block Believer","color":"#a7d3ff","bold": true}]
title @s[team=!play.beli] subtitle ["\u00a7rBelieve yourself !"]
team join wait.beli @s
tellraw @a[team=!wait.beli] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"Block Believer","color":"#a7d3ff","bold":true}," §7!"]
scoreboard players set wait.player tick 0
execute as @a[team=wait.beli,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n§a    Welcome to ",{"text":"Block Believer","color":"#a7d3ff","bold":true},"\n\n§e    游戏介绍：\n    §7游戏开始后，方块将会随机开始变化：\n§f    白色 §a-> §e黄色\n§e    黄色 §a-> §6橙色\n§6    橙色 §a-> §c红色\n§c    红色 §a-> §4消失\n"]
tellraw @a[team=wait.beli] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"}," §ePeople§b)"]
tp @s 14 3 -44 180 0

playsound entity.player.levelup player @s 14 3 -44 1 1 1
tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator

