execute unless score blaze.special state matches 2 run return fail
scoreboard players operation blaze.temp temp = blaze.time board
scoreboard players set 120 board 120
scoreboard players operation blaze.temp temp %= 120 board
execute if score blaze.temp temp matches 0 run function minecraft:blaze/during/refill_chest