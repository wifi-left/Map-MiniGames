##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set t_says.state state 0
gamemode adventure @a[gamemode=spectator,team=t_says]
execute as @a[gamemode=adventure,team=t_says] run function t_says/join
execute if entity @a[team=t_says,tag=play.total] run function minecraft:small_games/total/next_game_trigger
# Reset

schedule clear minecraft:t_says/summon
