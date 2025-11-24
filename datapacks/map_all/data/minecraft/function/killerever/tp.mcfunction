##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode adventure @a[gamemode=spectator,team=play.killer]
gamemode adventure @a[gamemode=spectator,team=wait.killer]
# execute as @a[gamemode=adventure,team=play.beli,tag=play.total] run function minecraft:small_games/total/win_score {score:1}
scoreboard players set killer.state state 0

execute if entity @a[team=play.killer,tag=play.total] run function small_games/total/next_game
execute as @a[gamemode=adventure,team=wait.killer] run function killerever/join
execute as @a[gamemode=adventure,team=play.killer] run function killerever/join



tag @a remove killer.killer
tag @a remove killer.saver
tag @a remove killer.runner