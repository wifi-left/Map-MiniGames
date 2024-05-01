##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
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

execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 0 run fill 79 115 60 77 115 58 black_wool
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 1 run fill 79 115 56 77 115 54 black_wool
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 2 run fill 79 115 52 77 115 50 black_wool
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 0 run fill 75 115 60 73 115 58 black_wool
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 1 run fill 75 115 56 73 115 54 black_wool
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 2 run fill 75 115 52 73 115 50 black_wool
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 0 run fill 71 115 60 69 115 58 black_wool
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 1 run fill 71 115 56 69 115 54 black_wool
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 2 run fill 71 115 52 69 115 50 black_wool

execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 0 run fill 79 120 60 77 120 58 pink_stained_glass
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 1 run fill 79 120 56 77 120 54 pink_stained_glass
execute if score boom.tmp.idx1 board matches 0 if score boom.tmp.idx2 board matches 2 run fill 79 120 52 77 120 50 pink_stained_glass
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 0 run fill 75 120 60 73 120 58 pink_stained_glass
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 1 run fill 75 120 56 73 120 54 pink_stained_glass
execute if score boom.tmp.idx1 board matches 1 if score boom.tmp.idx2 board matches 2 run fill 75 120 52 73 120 50 pink_stained_glass
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 0 run fill 71 120 60 69 120 58 pink_stained_glass
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 1 run fill 71 120 56 69 120 54 pink_stained_glass
execute if score boom.tmp.idx1 board matches 2 if score boom.tmp.idx2 board matches 2 run fill 71 120 52 69 120 50 pink_stained_glass

tellraw @a[team=chestgame] [{"translate":"\u00a70\u00a7l黑队\u00a76占领了 [%s, %s]","color": "gold","with":[{"score":{"name": "boom.tmp.idx1","objective": "board"},"color": "yellow"},{"score":{"name": "boom.tmp.idx2","objective": "board"},"color": "yellow"}]}]

function minecraft:small_games/chess/boom/action/takeover/after_b
