##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function small_games/chess/boom/action/getpos
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 0 run clone 79 120 60 77 120 58 77 101 50
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 1 run clone 79 120 56 77 120 54 77 101 50
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 2 run clone 79 120 52 77 120 50 77 101 50
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 0 run clone 75 120 60 73 120 58 77 101 50
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 1 run clone 75 120 56 73 120 54 77 101 50
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 2 run clone 75 120 52 73 120 50 77 101 50
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 0 run clone 71 120 60 69 120 58 77 101 50
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 1 run clone 71 120 56 69 120 54 77 101 50
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 2 run clone 71 120 52 69 120 50 77 101 50
execute store result score boom.fill.result board run fill 77 101 50 79 101 52 air replace #minecraft:chessglass
execute if score chess.state state matches 1 if score boom.fill.result board matches 9.. run function minecraft:small_games/chess/boom/action/takeover/pj

