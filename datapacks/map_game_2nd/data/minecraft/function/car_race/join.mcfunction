##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=!car.wait] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 加入了 ",{"text":"赛猪","color":"#00f7ff","bold":true}," §7!"]
title @s title [{"text":"赛猪","color":"#00f7ff","bold": true}]
title @s subtitle ["Modified from ",{"text":"Car Race","color":"#009966","bold": true}]
team join car.wait
scoreboard players set wait.player tick 0
execute as @a[team=car.wait,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @a[team=car.wait] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"}," §ePeople§b)"]
tp @s 148.0 96 8.0 0 0
function car_race/introduct
clear @s
effect clear @s
tag @s remove car.win
tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
advancement grant @s only games/recovered_game

