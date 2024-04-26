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

fill -348 12 -78 -352 15 -74 air replace #minecraft:terracotta
fill -278 12 -78 -282 15 -74 air replace #minecraft:terracotta

fill -354 3 -72 -360 10 -80 air replace #minecraft:terracotta
fill -276 3 -80 -270 10 -72 air replace #minecraft:terracotta