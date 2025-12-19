##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set build_guess.state state 0
gamemode adventure @a[gamemode=spectator,team=build_guess]
execute as @a[gamemode=adventure,team=build_guess] run function build_guess/join
execute if entity @a[team=build_guess,tag=play.total] run function small_games/total/next_game
# Reset

schedule clear minecraft:build_guess/summon
