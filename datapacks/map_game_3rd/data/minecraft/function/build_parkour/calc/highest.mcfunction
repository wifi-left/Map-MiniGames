scoreboard players set build_parkour.max board 0
execute as @a[tag=build_parkour.tobecalc] run function minecraft:build_parkour/calc/per
tag @a remove build_parkour.win
execute as @a[tag=build_parkour.tobecalc] run function minecraft:build_parkour/calc/is_me
