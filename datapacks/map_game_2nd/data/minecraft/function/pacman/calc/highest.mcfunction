scoreboard players set pacman.max board 0
execute as @a[tag=pacman.tobecalc] run function minecraft:pacman/calc/per
tag @a remove pacman.win
execute as @a[tag=pacman.tobecalc] run function minecraft:pacman/calc/is_me
