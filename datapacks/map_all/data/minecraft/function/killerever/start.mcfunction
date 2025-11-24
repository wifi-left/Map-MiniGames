##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove killer.killer
tag @a remove killer.saver
tag @a remove killer.runner
tag @a[team=wait.killer,gamemode=adventure] add killer.tobeassained
title @a[team=wait.killer] title [{"text":"密室杀手","color":"red","bold": true}]
title @a[team=wait.killer] subtitle ["\u00a7r一定要相信自己 ！"]
tellraw @a[team=wait.killer] ["\n    §6游戏将在5s后正式开始！\n"]

# execute as @a[team=wait.killer] run spreadplayers 187 26 0 20 under 67 false @s
execute as @a[team=wait.killer] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
team join play.killer @a[team=wait.killer]
spawnpoint @a[team=play.killer] -232 -60 -308
team modify play.killer friendlyFire false
scoreboard players set killer.state state 1

scoreboard players set play.killer tick 0
execute as @a[team=play.killer,gamemode=adventure] run scoreboard players add play.killer tick 1

function minecraft:killerever/assain_job
tellraw @a[team=play.killer,tag=killer.killer] ["\n\u00a7c你的杀手队伍队友：\n",{selector:"@a[team=play.killer,tag=killer.killer]"},"\n"]

scoreboard players set killer.time tick 6

execute as @a[team=play.killer,gamemode=adventure] in overworld run function minecraft:killerever/random_pos_player

kill @e[type=armor_stand,tag=killer.bow]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{killer:1}}}}]