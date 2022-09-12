title @s[team=!play.duel.yellow,team=!play.duel.blue] title [{"text":"Duel Game","color":"yellow","bold": true}]
title @s[team=!play.duel.yellow,team=!play.duel.blue] subtitle ["\u00a7rFight !"]
team join wait.duel @s
tellraw @a[team=!wait.duel] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 已加入 ",{"text":"Duel Game","color":"yellow","bold": true}," \u00a77!"]
scoreboard players set wait.player tick 0 
execute as @a[team=wait.duel,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n\u00a7a    Welcome to ",{"text":"Duel Game","color":"yellow","bold": true},"\n"]
tellraw @a[team=wait.duel] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
#tp @s 14 3 -44 180 0

playsound entity.player.levelup player @s -108 77 -88 1 1 1
clear @s
tp @s -108 77 -88 0 0