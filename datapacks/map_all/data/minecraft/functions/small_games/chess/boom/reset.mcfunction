##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill -77 138 -343 -46 138 -312 glass
forceload add 82 47 66 63
fill 81 120 62 67 120 48 minecraft:acacia_leaves[persistent=false]
fill 81 115 62 67 115 48 acacia_leaves[persistent=false]
forceload remove 82 47 66 63
# fill -46 113 -343 -77 113 -312 orange_wool
kill @e[tag=chess.put.black]
kill @e[tag=chess.put.white]
scoreboard players set blackcount board 1
scoreboard players set whitecount board 1

fill 67 120 59 81 120 59 minecraft:acacia_leaves[persistent=false]

fill 69 120 60 71 120 58 glass
fill 69 120 56 71 120 54 glass
fill 69 120 52 71 120 50 glass

fill 73 120 60 75 120 58 glass
fill 73 120 56 75 120 54 glass
fill 73 120 52 75 120 50 glass

fill 77 120 60 79 120 58 glass
fill 77 120 56 79 120 54 glass
fill 77 120 52 79 120 50 glass

fill 69 115 60 71 115 58 orange_wool
fill 69 115 56 71 115 54 orange_wool
fill 69 115 52 71 115 50 orange_wool

fill 73 115 60 75 115 58 orange_wool
fill 73 115 56 75 115 54 orange_wool
fill 73 115 52 75 115 50 orange_wool

fill 77 115 60 79 115 58 orange_wool
fill 77 115 56 79 115 54 orange_wool
fill 77 115 52 79 115 50 orange_wool
