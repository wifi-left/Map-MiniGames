data modify storage minecraft:temp total_game_list_now set from storage minecraft:temp total_game_list[0]
data remove storage minecraft:temp total_game_list[0]

data modify storage minecraft:temp total_game_list_now.string_tmp set from storage minecraft:temp string_tmp
data modify storage minecraft:temp total_game_list_now.spec_str set value "$"

function minecraft:small_games/total/settings/show_game_and_settings with storage minecraft:temp total_game_list_now
execute if data storage minecraft:temp total_game_list[0] run function minecraft:small_games/total/settings/show_all_dfs