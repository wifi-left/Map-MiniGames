scoreboard players set build_guess.max board 0
execute as @a[tag=build_guess.tobecalc] run function minecraft:build_guess/calc/per
tag @a remove build_guess.win
execute as @a[tag=build_guess.tobecalc] run function minecraft:build_guess/calc/is_me
