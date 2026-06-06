tellraw @s ["\n\u00a7c\u00a7l你没能在灾难中活下去...\n\u00a7f你被淘汰了。\n"]
playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
tp @s 221 -5 20 0 90
gamemode spectator @s
function player:full_health
scoreboard players set disaster.snow.player tick 0
execute as @a[team=disaster.snow,gamemode=adventure] run scoreboard players add disaster.snow.player tick 1
clear @s
execute if score disaster.snow.player tick matches 0 run function minecraft:small_games/total/win_score {score:3}
execute if score disaster.snow.player tick matches 1 run function minecraft:small_games/total/win_score {score:2}
execute if score disaster.snow.player tick matches 2 run function minecraft:small_games/total/win_score {score:1}