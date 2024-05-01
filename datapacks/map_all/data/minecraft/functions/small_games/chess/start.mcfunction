##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
fill 68 125 61 80 125 49 air replace #wool
kill @e[tag=chess.marker,type=marker]
kill @e[type=marker,tag=chess.point]

execute if score chest.type board matches ..1 run function small_games/chess/five/start
execute if score chest.type board matches 2 run function small_games/chess/boom/start
# execute if score chest.type board matches 3 run function small_games/chess/go/start
execute if score chest.type board matches 4 run function small_games/chess/gojp/start
execute if score chest.type board matches 3 run tellraw @s ["\u00a7c正在制作中..."]
# execute if score chest.type board matches 4 run function small_games/chess/gojp/start

