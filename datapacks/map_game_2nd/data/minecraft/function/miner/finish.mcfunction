tellraw @a[team=miner] [{"selector":"@s"},"\u00a7a 完成了挖掘。"]
scoreboard players set miner.player.win tick 0
execute as @a[team=miner,gamemode=spectator,tag=miner.win] run scoreboard players add miner.player.win tick 1
execute if score miner.player.win tick matches ..0 run function minecraft:small_games/total/win_score {score:4}
execute if score miner.player.win tick matches 1 run function minecraft:small_games/total/win_score {score:3}
execute if score miner.player.win tick matches 2 run function minecraft:small_games/total/win_score {score:2}
execute if score miner.player.win tick matches 3.. run function minecraft:small_games/total/win_score {score:1}
execute if score miner.player.win tick matches 3.. run function minecraft:miner/step/full_so_remove_time

tag @s add miner.win
gamemode spectator @s
tellraw @s ["\u00a7a你完成了挖掘"]
title @s title ["\u00a7a你完成了挖掘"]
title @s subtitle ["你已结束游戏"]