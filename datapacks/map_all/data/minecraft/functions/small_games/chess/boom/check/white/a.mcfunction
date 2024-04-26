tp @s ~1 ~ ~
# tellraw @a [{"score":{"name": "whitecount","objective": "board"}}]

execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 111 55 all run scoreboard players add whitecount board 1

execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 111 55 all unless score whitecount board matches 3.. run function small_games/chess/boom/check/white/a
# setblock 74 111 55 white_wool 
# tellraw @a [{"score":{"name": "whitecount","objective": "board"}}]