title @s[team=!play.color] title [{"text":"Color Blindness Game","color":"#009966","bold": true}]
title @s[team=!play.color] subtitle ["\u00a7rShine your eyes !"]
team join wait.color @s
tellraw @a[team=!wait.color] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 已加入 ",{"text":"Color Blindness Game","color":"#009966","bold": true}," \u00a77!"]
scoreboard players set wait.player tick 0 
execute as @a[team=wait.color,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n\u00a7a    Welcome to ",{"text":"Color Blindness Game","color":"#009966","bold": true},"\n\n\u00a7e    游戏介绍：\n    \u00a77游戏开始后，方块将会随机开始变化。\n\u00a7e    你需要在规定时间踩到指定方块上。\n\u00a7a    方块在物品栏第九格位置。\n"]
tellraw @a[team=wait.color] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
tp @s -32 28 33 0 0

playsound entity.player.levelup player @s -32 28 33 1 1 1
clear @s
effect clear @s 