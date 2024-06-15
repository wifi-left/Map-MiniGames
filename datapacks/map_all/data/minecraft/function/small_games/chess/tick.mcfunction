##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute if score chest.type board matches 1 if score chess.state state matches 1 run function small_games/chess/five/tick
execute if score chest.type board matches 2 if score chess.state state matches 1 run function small_games/chess/boom/tick
execute if score chest.type board matches 3 if score chess.state state matches 1 run function small_games/chess/go/tick
execute if score chest.type board matches 4 if score chess.state state matches 1 run function small_games/chess/gojp/tick
# execute as @a[team=chestgame] at @s if block ~ ~-1 ~ lime_glazed_terracotta run effect give @s levitation 2 25 true
