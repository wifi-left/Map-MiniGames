### Door

fill 373 22 -48 371 25 -48 minecraft:barrier
fill 374 22 -49 370 25 -49 minecraft:iron_bars

## In
# Left
fill 369 21 -128 371 24 -128 minecraft:barrier
fill 371 22 -127 369 23 -127 minecraft:iron_bars
# Right
fill 331 21 -128 329 24 -128 minecraft:barrier
fill 329 22 -127 331 23 -127 iron_bars
# Medium
fill 353 22 -134 347 26 -134 minecraft:iron_bars keep

tag @e[tag=zombie.spawn.now] remove zombie.spawn.now
tag @e[tag=zombie.spawn.main] add zombie.spawn.now