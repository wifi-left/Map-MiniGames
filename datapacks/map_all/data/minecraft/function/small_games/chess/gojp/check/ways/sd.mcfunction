##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
summon marker ~ ~1 ~ {Tags:["chess.tmp"]}
execute as @e[type=marker,tag=chess.tmp] at @s run function small_games/chess/gojp/check/ways/d
# setblock 74 111 55 black_wool
kill @e[type=marker,tag=chess.tmp]


