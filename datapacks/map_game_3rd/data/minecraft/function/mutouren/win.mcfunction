tellraw @a[team=mutouren] [{"selector":"@s"},"\u00a7a 完成了跑酷。"]
scoreboard players set mutouren.player.win tick 0
execute as @a[team=mutouren,gamemode=spectator,tag=mutouren.win_true] run scoreboard players add mutouren.player.win tick 1
execute if score mutouren.player.win tick matches ..0 run function minecraft:small_games/total/win_score {score:4}
execute if score mutouren.player.win tick matches 1 run function minecraft:small_games/total/win_score {score:3}
execute if score mutouren.player.win tick matches 2 run function minecraft:small_games/total/win_score {score:2}
execute if score mutouren.player.win tick matches 3.. run function minecraft:small_games/total/win_score {score:1}
execute if score mutouren.player.win tick matches 3.. run function minecraft:mutouren/step/full_so_remove_time

tag @s add mutouren.win_true
gamemode spectator @s
tellraw @s ["\u00a7a你完成了跑酷"]
title @s title ["\u00a7a你完成了跑酷"]
title @s subtitle ["你已结束跑酷"]