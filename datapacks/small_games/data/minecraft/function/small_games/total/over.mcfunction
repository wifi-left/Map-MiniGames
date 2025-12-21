##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

schedule clear minecraft:small_games/total/next_game
schedule clear minecraft:small_games/total/get_random_game

execute if entity @a[tag=merchant.player] run return run function minecraft:merchant/during/no_small_games

tellraw @a ["§b§l小游戏派对 §2游戏结束！"]
tag @a remove total.win
scoreboard players reset total.best board
execute as @a[team=play.total] run scoreboard players operation total.best board > @s score
execute as @a[team=play.total] if score @s score = total.best board run tag @s add total.win
title @a[team=play.total] title ["\u00a7c游戏结束"]
title @a[team=play.total,tag=total.win] title ["\u00a76YOU WIN"]
team leave @a[tag=total.win] 
title @a[team=play.total] subtitle ["\u00a7b获胜者：",{"selector":"@a[tag=total.win]"}]
title @a[tag=total.win] subtitle ["\u00a7b获胜者：",{"selector":"@a[tag=total.win]"}]
tellraw @a[team=play.total] ["§b获胜者：",{"selector":"@a[tag=total.win]"}]
tellraw @a[tag=total.win] ["§b获胜者：",{"selector":"@a[tag=total.win]"}]
team join play.total @a[tag=total.win]
tag @a remove total.win
schedule function small_games/total/tp 5s
scoreboard players set gametotal state 2000