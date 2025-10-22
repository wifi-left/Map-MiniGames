##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset @s die
tellraw @a[team=hide.play.hun] [{"selector":"@s"},"§c 变成了猎人。"]
tellraw @a[team=hide.play.ani] [{"selector":"@s"},"§c 变成了猎人。"]
tellraw @s ["§e你死了。\n现在成为了一个猎人。"]
clear @s
team join hide.play.hun
# function hideseek/during/hunitem
xp set @s 0 levels
xp set @s 0 points

tag @s add seel
execute as @e[tag=hide.animals,tag=hide.cosplay] if score @s LRS_START_DJS = @a[tag=seel,limit=1] park.uuid run tag @s add shouldtp
tag @s remove seel
# tp @e[tag=shouldtp] @s
scoreboard players reset @e[tag=shouldtp,limit=1]
kill @e[tag=shouldtp,limit=1]
# tellraw @s ["\n\u00a7a提示：请攻击动物靠上部分。\n"]

advancement grant @s only games/hide_animal_died

scoreboard players set play.tmp.player tick 0
execute as @a[team=hide.play.ani,gamemode=adventure] run scoreboard players add play.tmp.player tick 1

scoreboard players set play.tmp.player2 tick 0
execute as @a[team=hide.play.ani,gamemode=adventure] run scoreboard players add play.tmp.player2 tick 1
execute as @a[team=hide.play.hun,gamemode=adventure] run scoreboard players add play.tmp.player2 tick 1
execute if score play.tmp.player tick matches 0 if score play.tmp.player2 tick matches 10.. run execute as @s run function minecraft:small_games/total/win_score {score:1}

function minecraft:hideseek/during/hun_tp
xp set @s 0 levels
xp set @s 0 points