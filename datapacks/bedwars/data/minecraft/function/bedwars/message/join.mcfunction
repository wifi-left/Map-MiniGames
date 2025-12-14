##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s reset
tag @s remove bw.play

tellraw @a ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 加入了 §9§l起床战争 Bedwars§7 ."]
tp @s -302 76 210 0 0
execute if score bw.state state matches 1.. run function bedwars/message/spec
execute if score bw.state state matches ..-1 run tellraw @s ["\n§e您已加入队列。\n"]
execute if score bw.state state matches -1 run gamemode spectator @s
team join bw.wait @s
tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator
scoreboard players reset @s bw.team

clear @s
effect clear @s

scoreboard players reset @s bw.tmp.ir
scoreboard players reset @s bw.tmp.gd
scoreboard players reset @s bw.tmp.dm
scoreboard players reset @s bw.tmp.em
scoreboard players reset @s bw.axe
scoreboard players reset @s bw.pickaxe
scoreboard players reset @s bw.armor
scoreboard players reset @s pickblue
scoreboard players reset @s pickgreen
scoreboard players reset @s pickred
scoreboard players reset @s pickyellow
tag @s remove bw.attack
tag @s remove bw.armor
tag @s remove bw.speed
tag @s remove bw.jump
tag @s remove bw.fasti
tag @s remove bw.fastii
tag @s remove bw.shears
execute as @s run function player:empty_enderchest