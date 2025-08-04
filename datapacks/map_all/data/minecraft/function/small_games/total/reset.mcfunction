##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset * score
scoreboard players reset total.snow.tntrun state
scoreboard players reset total.snow.pick state
# data merge storage minecraft:temp {random_games:{games:[1,2,3,4,5,6,7,8,9],total:9}}
# function minecraft:small_games/total/all_games
function minecraft:small_games/total/games/games_reset

# data modify storage minecraft:temp random_games.games append value {id:7,name:"躲猫猫"}