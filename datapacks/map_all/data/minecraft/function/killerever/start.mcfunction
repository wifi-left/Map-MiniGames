##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove killer.killer
tag @a remove killer.saver
tag @a remove killer.runner
title @a[team=wait.killer] title [{"text":"密室杀手","color":"red","bold": true}]
title @a[team=wait.killer] subtitle ["\u00a7r一定要相信自己 ！"]
tellraw @a[team=wait.killer] ["\n    \u00a76游戏开始！ 你将在8秒后获得职业道具！\n"]
execute as @a[team=wait.killer] run spreadplayers 187 26 0 20 under 67 false @s
execute as @a[team=wait.killer] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
team join play.killer @a[team=wait.killer]
scoreboard players set killer.state state 1
kill @e[type=armor_stand,tag=killer.bow]
tag @a[team=play.killer,gamemode=adventure] add killer.runner
scoreboard players set play.player tick 0
execute as @a[team=play.killer,gamemode=adventure] run scoreboard players add play.player tick 1
execute if score play.player tick matches 8.. run execute as @r[tag=killer.runner,gamemode=adventure,team=play.killer,tag=!killer.saver] at @s run function killerever/getjob/killer
execute if score play.player tick matches 8.. run execute as @r[tag=killer.runner,gamemode=adventure,team=play.killer,tag=!killer.saver] at @s run function killerever/getjob/saver
execute if score play.player tick matches 8.. run tellraw @a[team=play.killer] ["\u00a76\u00a7l因为本局人数较多，已分配2杀手 + 2侦探。"]
execute as @r[tag=killer.runner,team=play.killer,tag=!killer.saver,gamemode=adventure] at @s run function killerever/getjob/killer
execute as @r[tag=killer.runner,team=play.killer,tag=!killer.saver,gamemode=adventure] at @s run function killerever/getjob/saver
# execute if score wait.player tick matches 6.. run execute as @r[tag=killer.runner,team=play.killer] at @s run function killerever/getjob/killer
# execute if score wait.player tick matches 6.. run execute as @r[tag=killer.runner,team=play.killer] at @s run function killerever/getjob/saver
title @a[team=play.killer] title ["\u00a7c\u00a7l密室杀手"]
title @a[team=play.killer] subtitle ["\u00a7r游戏将在 8 秒后开始！"]

tellraw @a[tag=killer.runner] ["\n\u00a7b\u00a7l密室杀手 ＞ \u00a76你的身份是：\u00a7a平民\n\u00a7a              活下去，就是胜利。\n"]
title @a[tag=killer.runner] title ["\u00a7aROLE: 平民"]
title @a[tag=killer.runner] subtitle ["\u00a7e活下去，就是胜利"]

title @a[tag=killer.killer] title ["\u00a7cROLE: 杀手"]
title @a[tag=killer.killer] subtitle ["\u00a7e杀死所有的幸存者！"]

title @a[tag=killer.saver] title ["\u00a7bROLE: 侦探"]
title @a[tag=killer.saver] subtitle ["\u00a7e找到杀手并击败它"]

tellraw @a[tag=killer.killer] ["\u00a7a [I] \u00a7b你的团队成员： ",{"selector":"@a[tag=killer.killer]"}]
tellraw @a[tag=killer.saver] ["\u00a7a [I] \u00a7b你的团队成员： ",{"selector":"@a[tag=killer.saver]"}]
tellraw @a[team=play.killer] ["\n\u00a7a为了防止打扰其他游戏的玩家，可使用 \u00a76/tm <信息> \u00a7a进行聊天。"]
schedule clear minecraft:killerever/summon
schedule function minecraft:killerever/summon 8s

