##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader

gamemode adventure @a[tag=play.total]
scoreboard players set total.start_game_mode board 1

function minecraft:small_games/total/start_next_game_with_argv with storage minecraft:temp total_game

scoreboard players set total.start_game_mode board 0