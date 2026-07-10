execute store result score build_guess.tmp board run clear @s sunflower 0
execute if score build_guess.max board = build_guess.tmp board run tag @s add build_guess.win