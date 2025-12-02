scoreboard players set chess.canplace temp 0
$execute positioned ~1 ~ ~1 run function minecraft:small_games/chess/blokus/flag_available/is_available {block:"$(block)"}
$execute positioned ~-1 ~ ~1 run function minecraft:small_games/chess/blokus/flag_available/is_available {block:"$(block)"}
$execute positioned ~1 ~ ~-1 run function minecraft:small_games/chess/blokus/flag_available/is_available {block:"$(block)"}
$execute positioned ~-1 ~ ~-1 run function minecraft:small_games/chess/blokus/flag_available/is_available {block:"$(block)"}