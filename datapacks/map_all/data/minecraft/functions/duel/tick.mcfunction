execute as @a[team=play.duel.yellow,gamemode=adventure] at @s if block ~ ~-1 ~ magma_block run function duel/died
execute as @a[team=play.duel.blue,gamemode=adventure] at @s if block ~ ~-1 ~ magma_block run function duel/died
execute as @a[team=play.duel.yellow,gamemode=adventure] at @s if block ~ ~-1 ~ diamond_block run function duel/score/yellow
execute as @a[team=play.duel.blue,gamemode=adventure] at @s if block ~ ~-1 ~ gold_block run function duel/score/blue
execute as @a[team=play.duel.blue,gamemode=adventure] at @s if block ~ ~-1 ~ diamond_block run function duel/score/wblue
execute as @a[team=play.duel.yellow,gamemode=adventure] at @s if block ~ ~-1 ~ gold_block run function duel/score/wyellow

fill -379 -3 -69 -251 -1 -83 air replace #minecraft:terracotta
fill -379 15 -69 -251 17 -83 air replace #minecraft:terracotta

kill @e[type=item,nbt={Item:{tag:{duel:1}}}]

execute as @a[team=play.duel.yellow] at @s run kill @e[type=item,distance=0..5]
execute as @a[team=play.duel.blue] at @s run kill @e[type=item,distance=0..5]

fill -362 11 -79 -368 15 -73 air replace #minecraft:terracotta
fill -369 3 -79 -375 10 -73 air replace #minecraft:terracotta

fill -268 11 -73 -262 15 -79 air replace #minecraft:terracotta
fill -261 3 -73 -255 10 -79 air replace #minecraft:terracotta