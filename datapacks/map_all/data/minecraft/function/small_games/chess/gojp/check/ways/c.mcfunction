tp @s ~ ~ ~2
execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 111 55 all run scoreboard players set chess.tmp board 1
execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 110 55 all unless score chess.tmp board matches 1.. at @s run function small_games/chess/gojp/check/ways/c
# setblock 74 111 55 black_wool

