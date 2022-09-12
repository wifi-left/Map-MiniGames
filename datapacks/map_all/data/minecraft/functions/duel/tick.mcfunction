execute as @a[team=play.duel.yellow,gamemode=adventure] at @s if block ~ ~-1 ~ magma_block run function duel/died
execute as @a[team=play.duel.blue,gamemode=adventure] at @s if block ~ ~-1 ~ magma_block run function duel/died
execute as @a[team=play.duel.yellow,gamemode=adventure] at @s if block ~ ~-1 ~ diamond_block run function duel/score/yellow
execute as @a[team=play.duel.blue,gamemode=adventure] at @s if block ~ ~-1 ~ gold_block run function duel/score/blue
execute as @a[team=play.duel.blue,gamemode=adventure] at @s if block ~ ~-1 ~ diamond_block run function duel/score/wblue
execute as @a[team=play.duel.yellow,gamemode=adventure] at @s if block ~ ~-1 ~ gold_block run function duel/score/wyellow

fill -103 64 -63 -113 76 -113 air replace #minecraft:terracottas
fill -113 45 -113 -103 34 -63 air replace #minecraft:terracottas
kill @e[type=item,nbt={Item:{tag:{duel:1}}}]

execute as @a[team=play.duel.yellow] at @s run kill @e[type=item,distance=0..5]
execute as @a[team=play.duel.blue] at @s run kill @e[type=item,distance=0..5]