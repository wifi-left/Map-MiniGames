##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill -77 138 -343 -46 138 -312 glass
forceload add 82 47 66 63
fill 81 120 62 67 120 48 glass
fill 81 115 62 67 115 48 orange_wool
forceload remove 82 47 66 63
# fill -46 113 -343 -77 113 -312 orange_wool
kill @e[tag=chess.put.a]
kill @e[tag=chess.put.b]
kill @e[tag=chess.put.c]
kill @e[tag=chess.put.d]
kill @e[tag=chess.point]
kill @e[tag=chess.marker]
execute positioned 67 121 48 run function minecraft:small_games/chess/blokus/place/a
execute positioned 81 121 48 run function minecraft:small_games/chess/blokus/place/c
execute positioned 81 121 62 run function minecraft:small_games/chess/blokus/place/b
execute positioned 67 121 62 run function minecraft:small_games/chess/blokus/place/d