##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score chess.state state matches 1 if score chest.type board matches 1 run function small_games/chess/five/second
execute if score chess.state state matches 1 if score chest.type board matches 2 run function small_games/chess/boom/second
execute if score chess.state state matches 1 if score chest.type board matches 3 run function small_games/chess/go/second
execute if score chess.state state matches 1 if score chest.type board matches 4 run function small_games/chess/gojp/second
