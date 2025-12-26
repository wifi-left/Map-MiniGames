##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader

## Testfor if the game has been on
scoreboard players set error state 0
function minecraft:small_games/total/check_game_not_running with storage minecraft:temp total_game

## Failure: Retry
execute if score error state matches 1.. run function minecraft:small_games/total/next_game_trigger_fail

gamemode adventure @a[tag=play.total]
scoreboard players set total.start_game_mode board 1

execute in overworld run function minecraft:small_games/total/start_next_game_with_argv with storage minecraft:temp total_game

scoreboard players set total.start_game_mode board 0