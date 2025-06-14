scoreboard players set bomb.failedyes board 0
execute as @e[tag=bomb.sculk] at @s if block ~ ~ ~ sculk_shrieker[shrieking=true] run scoreboard players set bomb.failedyes board 1
execute if score bomb.failedyes board matches 1 run function minecraft:bomb/round/failed
function minecraft:bomb/round/testfor_success