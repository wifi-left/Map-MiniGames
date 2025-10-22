##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set sw.state state 0
team join wait.sw @a[team=play.sw]
# execute if entity @a[team=wait.sw,tag=play.total] run function small_games/total/next_game
execute if entity @a[team=wait.sw,tag=play.total] run function small_games/total/next_game


execute as @a[team=wait.sw] at @s run function minecraft:cloud/join
execute as @a[team=play.sw] at @s run function minecraft:cloud/join
execute positioned 688 -1 352 run kill @e[type=item,distance=0..200]
