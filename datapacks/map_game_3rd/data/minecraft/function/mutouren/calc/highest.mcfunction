scoreboard players set mutouren.max board 0
execute as @a[tag=mutouren.tobecalc] run function minecraft:mutouren/calc/per
tag @a remove mutouren.win
execute as @a[tag=mutouren.tobecalc] run function minecraft:mutouren/calc/is_me
