##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=!pw.wait] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 加入了 ",{"text":"冬泳怪鸽","color":"#1E90FF","bold":true}," §7!"]
team join pw.wait
scoreboard players set wait.player tick 0
execute as @a[team=pw.wait,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @a[team=pw.wait] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"}," §ePeople§b)"]
tp @s -93 20 -10 0 0
function poolwar/introduct
clear @s
effect clear @s
tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator
scoreboard players set @s pw.max 120

