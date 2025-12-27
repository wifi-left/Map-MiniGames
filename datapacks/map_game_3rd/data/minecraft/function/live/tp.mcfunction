##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set live.state state 0
team join live @a[team=live.killer]
gamemode adventure @a[gamemode=spectator,team=live]
execute as @a[gamemode=adventure,team=live] run function live/join
execute if entity @a[team=live,tag=play.total] run function minecraft:small_games/total/next_game_trigger
# Reset

schedule clear minecraft:live/summon
