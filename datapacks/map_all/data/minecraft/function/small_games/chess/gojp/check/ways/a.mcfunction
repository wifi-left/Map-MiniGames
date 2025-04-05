tp @s ~2 ~ ~
# tellraw @a [{"score":{"name": "blackcount","objective": "board"}}]

execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 111 55 all run scoreboard players set chess.tmp board 1
execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 110 55 all unless score chess.tmp board matches 1.. run function small_games/chess/gojp/check/ways/a
# setblock 74 111 55 black_wool
# tellraw @a [{"score":{"name": "blackcount","objective": "board"}}]
