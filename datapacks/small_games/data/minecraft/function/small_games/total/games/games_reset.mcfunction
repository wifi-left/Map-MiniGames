data remove storage minecraft:temp random_games

function minecraft:small_games/total/games/all
function minecraft:small_games/total/games/games_reset_dfs
# data modify storage minecraft:temp random_games.games set from storage minecraft:temp random_games.enabledgames
execute store result storage minecraft:temp random_games.total int 1 run data get storage minecraft:temp random_games.games
# data remove storage minecraft:temp random_games.enabledgames
