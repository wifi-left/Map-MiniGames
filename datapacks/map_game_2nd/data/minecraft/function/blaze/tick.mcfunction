function minecraft:blaze/point_detect
execute if block 54 -24 396 minecraft:lever[powered=false] if block 54 -25 402 minecraft:iron_bars run function minecraft:blaze/during/bg/door_a_open
execute if block 54 -24 396 minecraft:lever[powered=true] unless block 54 -25 402 minecraft:iron_bars run function minecraft:blaze/during/bg/door_a_close
execute if block 75 -25 342 minecraft:lever[powered=false] if block 69 -26 336 minecraft:iron_bars run function minecraft:blaze/during/bg/door_b_open
execute if block 75 -25 342 minecraft:lever[powered=true] unless block 69 -26 336 minecraft:iron_bars run function minecraft:blaze/during/bg/door_b_close

