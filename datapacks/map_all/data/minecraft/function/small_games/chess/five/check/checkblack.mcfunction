##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function small_games/chess/five/check/black/checkmain
execute if score chess.state state matches 1..1 run function small_games/chess/five/nextround
