scoreboard players set blockrace.max board 0
execute as @a[tag=blockrace.tobecalc] run function minecraft:blockrace/calc/per
tag @a remove blockrace.rankwin
execute as @a[tag=blockrace.tobecalc] run function minecraft:blockrace/calc/is_me
