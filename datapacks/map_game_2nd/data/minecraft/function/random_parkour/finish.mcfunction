tellraw @a[team=random_parkour] [{"selector":"@s"},"\u00a7a 完成了跑酷。"]
scoreboard players set random_parkour.player.win tick 0
execute as @a[team=random_parkour,gamemode=spectator,tag=random_parkour.win] run scoreboard players add random_parkour.player.win tick 1
execute if score random_parkour.player.win tick matches ..0 run function minecraft:small_games/total/win_score {score:4}
execute if score random_parkour.player.win tick matches 1 run function minecraft:small_games/total/win_score {score:3}
execute if score random_parkour.player.win tick matches 2 run function minecraft:small_games/total/win_score {score:2}
execute if score random_parkour.player.win tick matches 3.. run function minecraft:small_games/total/win_score {score:1}
execute if score random_parkour.player.win tick matches 3.. run function minecraft:random_parkour/step/full_so_remove_time

tag @s add random_parkour.win
gamemode spectator @s
tellraw @s ["\u00a7a你完成了跑酷"]
title @s title ["\u00a7a你完成了跑酷"]
title @s subtitle ["你已结束游戏"]