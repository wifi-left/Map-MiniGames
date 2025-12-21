##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove total.win

execute if entity @a[tag=merchant.alive] run return run function minecraft:merchant/during/small_game_over

tellraw @a ["§b§l小游戏派对 §2游戏结束！"]
title @a[team=play.total] title ["\u00a7c游戏结束"]
title @a[team=play.total] subtitle ["\u00a7b意外结束了游戏"]
schedule clear minecraft:small_games/total/next_game
schedule clear minecraft:small_games/total/get_random_game
schedule function small_games/total/tp 5s
scoreboard players set gametotal state 2000

