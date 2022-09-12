
execute if score chest.type board matches 1 if score chess.state state matches 1 run function small_games/chess/five/tick
execute if score chest.type board matches 2 if score chess.state state matches 2 run function small_games/chess/ch_chess/tick
# execute as @a[team=chestgame] at @s if block ~ ~-1 ~ lime_glazed_terracotta run effect give @s levitation 2 25 true