##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s[team=!play.color] title [{"text":"Color Blindness Game","color":"#009966","bold": true}]
title @s[team=!play.color] subtitle ["\u00a7rShine your eyes !"]
team join wait.color @s
tellraw @a[team=!wait.color] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"Color Blindness Game","color":"#009966","bold":true}," §7!"]
scoreboard players set wait.player tick 0
execute as @a[team=wait.color,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n§a    Welcome to ",{"text":"Color Blindness Game","color":"#009966","bold":true},"\n\n§e    游戏介绍：\n    §7游戏开始后，方块将会随机开始变化。\n§e    你需要在规定时间踩到指定方块上。\n§a    方块在物品栏第九格位置。\n"]
tellraw @a[team=wait.color] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"}," §ePeople§b)"]
tp @s -32 28 33 0 0

playsound entity.player.levelup player @s -32 28 33 1 1 1
clear @s
effect clear @s
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

