title @s[team=!play.hotpot] title [{"text":"Hot Potato","color":"#5ed3ff","bold": true}]
title @s[team=!play.hotpot] subtitle ["\u00a7rBe Careful !"]
team join wait.hotpot @s
tellraw @a[team=!wait.hotpot] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 已加入 ",{"text":"Hot Potato","color":"#aed3ff","bold": true}," \u00a77!"]
scoreboard players set wait.player tick 0 
execute as @a[team=wait.hotpot,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n\u00a7a    Welcome to ",{"text":"Hot Potato","color":"#aed3ff","bold": true},"\n\n    \u00a7b游戏规则：\n\u00a7a    游戏开始后，一名玩家会持有 “Hot Potato”，他需要将它\n传给其他人。倒计时结束，持有者死亡。最后死亡者获胜！\n"]
tellraw @a[team=wait.hotpot] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
#tp @s 14 3 -44 180 0
tp @s -66 60 -83 90 0
playsound entity.player.levelup player @s 14 3 -44 1 1 1