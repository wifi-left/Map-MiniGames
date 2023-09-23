execute if data entity @s {data:{team:1}} run particle minecraft:dust 0.059 0.973 0.439 1 ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{team:2}} run particle minecraft:dust 0.973 0.059 0.059 1 ~ ~ ~ 0 0 0 1 1

execute if score @s PSTJ matches ..-1 run function boatgun:gun/die
execute if score @s PSTJ matches 0.. if block ^ ^ ^1 #gunblock run function boatgun:gun/die
execute if score @s PSTJ matches 0.. if block ^ ^ ^0.5 #gunblock run function boatgun:gun/die
# park.uuid
execute if score @s PSTJ matches 0.. run tp @s ^ ^ ^1
execute if score @s PSTJ matches 0.. run function boatgun:gun/testfortarget
# Target TEAM B
# Target TEAM A
# say @a[tag=hitted]
execute if score @s PSTJ matches 0.. if data entity @s {data:{team:2}} if entity @a[team=btw.play.a,tag=hitted] run function boatgun:hit/b
execute if score @s PSTJ matches 0.. if data entity @s {data:{team:1}} if entity @a[team=btw.play.b,tag=hitted] run function boatgun:hit/a
# execute if score @s PSTJ matches 0.. run scoreboard players remove @s PSTJ 1
tag @e[tag=hitted] remove hitted
execute if score @s PSTJ matches 0.. run scoreboard players remove @s PSTJ 1