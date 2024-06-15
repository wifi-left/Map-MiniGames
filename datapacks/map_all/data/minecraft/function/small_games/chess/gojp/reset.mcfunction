##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill -77 138 -343 -46 138 -312 glass
forceload add 82 47 66 63
fill 81 120 62 67 120 48 glass
fill 81 115 62 67 115 48 orange_wool

fill 68 120 62 68 120 48 acacia_leaves[persistent=false]
fill 70 120 62 70 120 48 acacia_leaves[persistent=false]
fill 72 120 62 72 120 48 acacia_leaves[persistent=false]
fill 74 120 62 74 120 48 acacia_leaves[persistent=false]
fill 76 120 62 76 120 48 acacia_leaves[persistent=false]
fill 78 120 62 78 120 48 acacia_leaves[persistent=false]
fill 80 120 62 80 120 48 acacia_leaves[persistent=false]

fill 67 120 49 81 120 49 acacia_leaves[persistent=false]
fill 67 120 51 81 120 51 acacia_leaves[persistent=false]
fill 67 120 53 81 120 53 acacia_leaves[persistent=false]
fill 67 120 55 81 120 55 acacia_leaves[persistent=false]
fill 67 120 57 81 120 57 acacia_leaves[persistent=false]
fill 67 120 59 81 120 59 acacia_leaves[persistent=false]
fill 67 120 61 81 120 61 acacia_leaves[persistent=false]

fill 68 115 62 68 115 48 acacia_leaves[persistent=false]
fill 70 115 62 70 115 48 acacia_leaves[persistent=false]
fill 72 115 62 72 115 48 acacia_leaves[persistent=false]
fill 74 115 62 74 115 48 acacia_leaves[persistent=false]
fill 76 115 62 76 115 48 acacia_leaves[persistent=false]
fill 78 115 62 78 115 48 acacia_leaves[persistent=false]
fill 80 115 62 80 115 48 acacia_leaves[persistent=false]

fill 67 115 49 81 115 49 acacia_leaves[persistent=false]
fill 67 115 51 81 115 51 acacia_leaves[persistent=false]
fill 67 115 53 81 115 53 acacia_leaves[persistent=false]
fill 67 115 55 81 115 55 acacia_leaves[persistent=false]
fill 67 115 57 81 115 57 acacia_leaves[persistent=false]
fill 67 115 59 81 115 59 acacia_leaves[persistent=false]
fill 67 115 61 81 115 61 acacia_leaves[persistent=false]

# 默认棋子
setblock 75 120 56 minecraft:white_stained_glass
setblock 73 120 56 minecraft:black_stained_glass
setblock 75 120 54 minecraft:black_stained_glass
setblock 73 120 54 minecraft:white_stained_glass

setblock 75 115 56 minecraft:white_wool
setblock 73 115 56 minecraft:black_wool
setblock 75 115 54 minecraft:black_wool
setblock 73 115 54 minecraft:white_wool

summon marker 75 120 56 {Tags:["chess.point"]}
summon marker 73 120 56 {Tags:["chess.point"]}
summon marker 75 120 54 {Tags:["chess.point"]}
summon marker 73 120 54 {Tags:["chess.point"]}

forceload remove 82 47 66 63
# fill -46 113 -343 -77 113 -312 orange_wool
kill @e[tag=chess.put.black]
kill @e[tag=chess.put.white]
scoreboard players set blackcount board 1
scoreboard players set whitecount board 1
