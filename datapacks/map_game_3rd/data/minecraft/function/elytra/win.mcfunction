tellraw @a[team=elytra] [{"selector":"@s"},"\u00a7a 完成了飞行。"]
scoreboard players set elytra.player.win tick 0
execute as @a[team=elytra,gamemode=spectator,tag=elytra.win_true] run scoreboard players add elytra.player.win tick 1
execute if score elytra.player.win tick matches ..0 run function minecraft:small_games/total/win_score {score:4}
execute if score elytra.player.win tick matches 1 run function minecraft:small_games/total/win_score {score:3}
execute if score elytra.player.win tick matches 2 run function minecraft:small_games/total/win_score {score:2}
execute if score elytra.player.win tick matches 3.. run function minecraft:small_games/total/win_score {score:1}
execute if score elytra.player.win tick matches 3.. run function minecraft:elytra/step/full_so_remove_time

tag @s add elytra.win_true
gamemode spectator @s
tellraw @s ["\u00a7a你完成了飞行"]
title @s title ["\u00a7a你完成了飞行"]
title @s subtitle ["你已结束飞行"]