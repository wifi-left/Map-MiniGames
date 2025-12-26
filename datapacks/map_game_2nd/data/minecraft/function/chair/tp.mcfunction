##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set chair.state state 0
gamemode adventure @a[gamemode=spectator,team=chair]
execute as @a[gamemode=adventure,team=chair] run function chair/join
execute if entity @a[team=chair,tag=play.total] run function minecraft:small_games/total/next_game_trigger
# Reset

schedule clear minecraft:chair/summon
