summon marker ~ ~1 ~ {Tags:["chess.tmp"]}
execute as @e[type=marker,tag=chess.tmp] at @s run function small_games/chess/gojp/check/ways/a
# setblock 74 111 55 black_wool
kill @e[type=marker,tag=chess.tmp]

