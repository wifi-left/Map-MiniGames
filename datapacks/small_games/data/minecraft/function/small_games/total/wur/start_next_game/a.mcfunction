##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader

gamemode adventure @a[team=play.total]

scoreboard players set total.a.hastarted board 1

scoreboard players set total.start_game_mode board 1
execute in overworld run function minecraft:small_games/total/start_next_game_with_argv with storage minecraft:temp total_game_wur.a

scoreboard players set total.start_game_mode board 0