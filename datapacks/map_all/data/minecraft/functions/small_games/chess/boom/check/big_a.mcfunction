##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:small_games/chess/boom/check/big

clone 71 125 50 71 125 50 73 106 54
clone 71 125 54 71 125 54 73 106 55
clone 71 125 58 71 125 58 73 106 56
clone 75 125 50 75 125 50 74 106 54
clone 75 125 54 75 125 54 74 106 55
clone 75 125 58 75 125 58 74 106 56
clone 79 125 50 79 125 50 75 106 54
clone 79 125 54 79 125 54 75 106 55
clone 79 125 58 79 125 58 75 106 56

# 75 106 56 - 73 106 54
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 0 positioned 75 106 56 run function minecraft:small_games/chess/boom/check/bigcheck2_a
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 1 positioned 75 106 55 run function minecraft:small_games/chess/boom/check/bigcheck2_a
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 2 positioned 75 106 54 run function minecraft:small_games/chess/boom/check/bigcheck2_a
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 0 positioned 74 106 56 run function minecraft:small_games/chess/boom/check/bigcheck2_a
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 1 positioned 74 106 55 run function minecraft:small_games/chess/boom/check/bigcheck2_a
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 2 positioned 74 106 54 run function minecraft:small_games/chess/boom/check/bigcheck2_a
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 0 positioned 73 106 56 run function minecraft:small_games/chess/boom/check/bigcheck2_a
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 1 positioned 73 106 55 run function minecraft:small_games/chess/boom/check/bigcheck2_a
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 2 positioned 73 106 54 run function minecraft:small_games/chess/boom/check/bigcheck2_a
