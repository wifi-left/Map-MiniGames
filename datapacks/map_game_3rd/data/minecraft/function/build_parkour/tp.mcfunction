##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set build_parkour.state state 0
gamemode adventure @a[gamemode=spectator,team=build_parkour]
execute as @a[gamemode=adventure,team=build_parkour] run function build_parkour/join
execute if entity @a[team=build_parkour,tag=play.total] run function small_games/total/next_game
# Reset

schedule clear minecraft:build_parkour/summon
