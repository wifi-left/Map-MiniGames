scoreboard players set mining.max board 0
execute as @a[tag=mining.tobecalc] run function minecraft:mining/calc/per
tag @a remove mining.win
execute as @a[tag=mining.tobecalc] run function minecraft:mining/calc/is_me
