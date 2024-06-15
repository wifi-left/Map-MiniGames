##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function small_games/chess/boom/action/getpos
scoreboard players operation boom.in.idx1 board = boom.tmp.x board
scoreboard players operation boom.in.idx2 board = boom.tmp.z board
function small_games/chess/boom/action/unlockonlyoneplace

function small_games/chess/boom/nextround
