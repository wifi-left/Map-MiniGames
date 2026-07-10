scoreboard players set elytra.max board 0
execute as @a[tag=elytra.tobecalc] run function minecraft:elytra/calc/per
tag @a remove elytra.win
execute as @a[tag=elytra.tobecalc] run function minecraft:elytra/calc/is_me
