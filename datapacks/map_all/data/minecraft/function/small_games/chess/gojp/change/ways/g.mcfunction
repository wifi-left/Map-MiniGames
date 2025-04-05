tp @s ~-2 ~ ~2
execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 111 55 all run scoreboard players set chess.tmp board 1
execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 110 55 all run setblock ~ ~-1 ~ lime_stained_glass
execute at @s if block ~ ~-1 ~ lime_stained_glass unless score chess.tmp board matches 1.. at @s run function small_games/chess/gojp/change/ways/g
# setblock 74 111 55 black_wool

