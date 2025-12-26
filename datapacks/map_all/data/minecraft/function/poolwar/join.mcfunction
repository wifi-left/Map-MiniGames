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
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
scoreboard players set @s pw.max 120

