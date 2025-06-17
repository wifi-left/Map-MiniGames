##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s reset

tellraw @a ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 joined §9§lBedwars§7 ."]
tp @s -302 76 210 0 0
execute if score bw.state state matches 1.. run function bedwars/message/spec
execute if score bw.state state matches ..-1 run tellraw @s ["\n§e您已加入队列。\n"]
execute if score bw.state state matches -1 run gamemode spectator @s
team join bw.wait @s
tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
scoreboard players reset @s bw.team

clear @s
effect clear @s