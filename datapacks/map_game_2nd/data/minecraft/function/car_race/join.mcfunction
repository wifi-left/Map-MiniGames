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
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
advancement grant @s only games/recovered_game

