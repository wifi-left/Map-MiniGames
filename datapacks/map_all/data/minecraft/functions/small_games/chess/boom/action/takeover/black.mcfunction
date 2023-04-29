function small_games/chess/boom/action/getpos
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 0 run fill 79 125 60 77 125 58 black_wool
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 1 run fill 79 125 56 77 125 54 black_wool
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 2 run fill 79 125 52 77 125 50 black_wool
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 0 run fill 75 125 60 73 125 58 black_wool
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 1 run fill 75 125 56 73 125 54 black_wool
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 2 run fill 75 125 52 73 125 50 black_wool
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 0 run fill 71 125 60 69 125 58 black_wool
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 1 run fill 71 125 56 69 125 54 black_wool
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 2 run fill 71 125 52 69 125 50 black_wool

execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 0 run fill 79 120 60 77 120 58 black_wool
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 1 run fill 79 120 56 77 120 54 black_wool
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 2 run fill 79 120 52 77 120 50 black_wool
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 0 run fill 75 120 60 73 120 58 black_wool
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 1 run fill 75 120 56 73 120 54 black_wool
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 2 run fill 75 120 52 73 120 50 black_wool
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 0 run fill 71 120 60 69 120 58 black_wool
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 1 run fill 71 120 56 69 120 54 black_wool
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 2 run fill 71 120 52 69 120 50 black_wool

function minecraft:small_games/chess/boom/action/takeover/after