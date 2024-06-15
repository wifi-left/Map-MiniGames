##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill -77 138 -343 -46 138 -312 glass
forceload add 82 47 66 63
fill 81 120 62 67 120 48 glass
fill 81 115 62 67 115 48 orange_wool
forceload remove 82 47 66 63
# fill -46 113 -343 -77 113 -312 orange_wool
kill @e[tag=chess.put.black]
kill @e[tag=chess.put.white]
scoreboard players set blackcount board 1
scoreboard players set whitecount board 1
