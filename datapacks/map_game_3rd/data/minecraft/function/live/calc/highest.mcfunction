scoreboard players set live.max board 0
execute as @a[tag=live.tobecalc] run function minecraft:live/calc/per
tag @a remove live.win
execute as @a[tag=live.tobecalc] run function minecraft:live/calc/is_me
