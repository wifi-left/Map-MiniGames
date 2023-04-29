fill 68 125 61 80 125 49 air replace #wool
execute if score chest.type board matches ..1 run function small_games/chess/five/start
execute if score chest.type board matches 2 run function small_games/chess/boom/start