scoreboard players set fishing.max board 0
execute as @a[tag=fishing.tobecalc] run function minecraft:fishing/calc/per
tag @a remove fishing.win
execute as @a[tag=fishing.tobecalc] run function minecraft:fishing/calc/is_me
