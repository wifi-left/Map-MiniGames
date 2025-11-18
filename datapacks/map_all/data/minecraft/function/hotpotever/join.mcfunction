##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
title @s[team=!play.hotpot] title [{"text":"Hot Potato","color":"#5ed3ff","bold": true}]
title @s[team=!play.hotpot] subtitle ["\u00a7rBe Careful !"]
team join wait.hotpot @s
tellraw @a[team=!wait.hotpot] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"Hot Potato","color":"#aed3ff","bold":true}," §7!"]
scoreboard players set wait.player tick 0
execute as @a[team=wait.hotpot,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n§a    Welcome to ",{"text":"Hot Potato","color":"#aed3ff","bold":true},"\n\n    §b游戏规则：\n§a    游戏开始后，一名玩家会持有 “Hot Potato”，他需要将它\n传给其他人。倒计时结束，持有者死亡。最后死亡者获胜！\n"]
tellraw @a[team=wait.hotpot] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"}," §ePeople§b)"]
#tp @s 14 3 -44 180 0
tp @s -66 60 -83 90 0
playsound entity.player.levelup player @s 14 3 -44 1 1 1
tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator

