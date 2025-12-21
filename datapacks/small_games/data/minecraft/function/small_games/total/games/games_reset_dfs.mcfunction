execute unless data storage minecraft:temp random_games_all.games[0] run return fail

data modify storage minecraft:temp total_game_list_now set from storage minecraft:temp random_games_all.games[0]
data remove storage minecraft:temp random_games_all.games[0]
execute store result score total.game.isdisabled board run function minecraft:small_games/total/settings/detect_game_settings with storage minecraft:temp total_game_list_now
execute unless score total.game.isdisabled board matches 1 run data modify storage minecraft:temp random_games.games append from storage minecraft:temp total_game_list_now

execute if data storage minecraft:temp random_games_all.games[0] run function minecraft:small_games/total/games/games_reset_dfs