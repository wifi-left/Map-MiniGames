title @s title [{"text":"密室杀手","color":"red","bold": true}]
title @s subtitle ["\u00a7r小心！ 杀手也许就在你身边！"]
team join wait.killer @s
tellraw @a[team=!wait.killer] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 已加入 ",{"text":"密室杀手","color":"red","bold": true}," \u00a77!"]
scoreboard players set wait.player tick 0 
execute as @a[team=wait.killer,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n\u00a7a    Welcome to ",{"text":"密室杀手","color":"red","bold": true},"\n"]
tellraw @a[team=wait.killer] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
tp @s 94 20 16 90 0

playsound entity.player.levelup player @s 94 20 16 1 1 1
clear @s
effect clear @s