scoreboard players set t_says.max board 0
execute as @a[tag=t_says.tobecalc] run function minecraft:t_says/calc/per
tag @a remove t_says.win
execute as @a[tag=t_says.tobecalc] run function minecraft:t_says/calc/is_me
