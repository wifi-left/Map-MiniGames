##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute as @a[team=hide.wait2] run function hide2/join
execute as @a[team=hide.runner] run function hide2/join
execute as @a[team=hide.killer] run function hide2/join
execute if entity @a[team=hide.wait2,tag=play.total] run function minecraft:small_games/total/next_game_trigger
gamemode adventure @a[team=hide.wait2]

