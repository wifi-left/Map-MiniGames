##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n§e游戏公开测试中...遇到BUG请及时反馈！\n"]
title @s title [{"text":"\u00a7b\u00a7lBoat Wars","color":"#F28500"}]
title @s subtitle ["\u00a77Shoot them down!"]
gamemode adventure @s
execute in airworld run tp @s 591 1 -6 0 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1
tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator
team join btw.wait
effect clear @s
effect give @s instant_health 1 25 true
clear @s
scoreboard players reset @s btw.boattype
scoreboard players reset @s btw.gunspeed
scoreboard players reset @s btw.coin

