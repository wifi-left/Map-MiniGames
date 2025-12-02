data modify storage minecraft:temp total_game_list_now set from storage minecraft:temp total_game_list[0]
data remove storage minecraft:temp total_game_list[0]
function minecraft:small_games/total/settings/set_game_can with storage minecraft:temp total_game_list_now
execute if data storage minecraft:temp total_game_list[0] run function minecraft:small_games/total/settings/modify_game_enable_state_dfs