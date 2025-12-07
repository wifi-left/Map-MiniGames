fill 68 125 61 80 125 49 air replace #wool
function minecraft:small_games/chess/kill_temp

scoreboard players set chess.state state 0
execute if score chest.type board matches ..1 run function small_games/chess/five/start
execute if score chest.type board matches 2 run function small_games/chess/boom/start
execute if score chest.type board matches 3 run function minecraft:small_games/chess/fail_start
# execute if score chest.type board matches 3 run function small_games/chess/go/start
execute if score chest.type board matches 4 run function small_games/chess/gojp/start