##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# clone 67 115 48 81 115 62 66 100 47
# fill 66 100 47 80 100 61 lime_wool replace black_wool
# fill 66 100 47 80 100 61 lime_wool replace white_wool
# fill 66 100 63 80 100 77 minecraft:lime_wool
# execute if blocks 66 100 47 80 100 61 66 100 63 all run function small_games/chess/boom/win/pj

clone 79 125 50 79 125 50 75 106 54
clone 79 125 54 79 125 54 75 106 55
clone 79 125 58 79 125 58 75 106 56
clone 75 125 50 75 125 50 74 106 54
clone 75 125 54 75 125 54 74 106 55
clone 75 125 58 75 125 58 74 106 56
clone 71 125 50 71 125 50 73 106 54
clone 71 125 54 71 125 54 73 106 55
clone 71 125 58 71 125 58 73 106 56

scoreboard players set boom.fill.result board 0
execute if score chess.state state matches 1 store result score boom.fill.result board run fill 73 106 56 75 106 54 minecraft:air replace #wool
execute if score chess.state state matches 1 if score boom.fill.result board matches 9.. run function minecraft:small_games/chess/boom/check/checkbig2


