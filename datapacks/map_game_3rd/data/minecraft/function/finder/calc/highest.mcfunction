scoreboard players set finder.max board 0
execute as @a[tag=finder.tobecalc] run function minecraft:finder/calc/per
tag @a remove finder.win
execute as @a[tag=finder.tobecalc] run function minecraft:finder/calc/is_me
