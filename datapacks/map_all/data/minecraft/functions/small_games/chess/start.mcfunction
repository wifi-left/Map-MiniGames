fill 68 125 61 80 125 49 air replace #wool
kill @e[tag=chess.marker,type=marker]
execute if score chest.type board matches ..1 run function small_games/chess/five/start
execute if score chest.type board matches 2 run function small_games/chess/boom/start
execute if score chest.type board matches 3 run function small_games/chess/go/start
execute if score chest.type board matches 4 run function small_games/chess/gojp/start
# execute if score chest.type board matches 4 run tellraw @s ["\u00a7c正在制作中...(研究规则中)"]
# execute if score chest.type board matches 4 run function small_games/chess/gojp/start