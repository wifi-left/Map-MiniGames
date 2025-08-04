##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n §e※ §c「TNT Wars」\n\n§e    §6游戏规则\n\n§b    游戏开始后，玩家将被分为两组。\n§b    一定的时间后会生成物资（TNT投掷蛋）\n§b    使用此道具向对方投掷TNT，将对方§l扔下虚空§b！\n"]
title @s title ["\u00a7c\u00a7lTNT Wars"]
title @s subtitle ["\u00a7fBoom Boom Boom!"]
tp @s 502 20 240 0 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1

team join wait.tntwars

tag @s remove tntwars.a
tag @s remove tntwars.b
gamemode adventure @s
clear @s
xp set @s 0 levels
xp set @s 0 points

tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator

