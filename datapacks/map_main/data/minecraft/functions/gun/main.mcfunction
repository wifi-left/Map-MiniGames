execute if data entity @s {data:{guntype:1}} run particle minecraft:dust 0.059 0.973 0.439 1 ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:10}} run particle minecraft:dust 0.973 0.545 0.059 1 ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:2}} run particle minecraft:lava ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:3}} run particle minecraft:dust 0.82 0.059 0.973 1 ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:-1}} run particle minecraft:dust 1 0.125 0.533 1 ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:-2}} run particle minecraft:dust 0.455 0.204 0.322 1 ~ ~ ~ 0 0 0 1 1
execute if score @s PSTJ matches ..-1 run function gun/die
execute if score @s PSTJ matches 0.. if block ^ ^ ^1 #bwplace run function gun/die
execute if score @s PSTJ matches 0.. if block ^ ^ ^0.5 #bwplace run function gun/die
# park.uuid
execute if score @s PSTJ matches 0.. run tp @s ^ ^ ^1.5
execute if score @s PSTJ matches 0.. run function gun/testfortarget
execute if score @s PSTJ matches 0.. run function gun/testfortarget2

execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:1}} if entity @e[tag=pve.zombie,tag=hitted] run function gun/1/hit 
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:2}} if entity @e[tag=pve.zombie,tag=hitted] run function gun/2/hit 
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:3}} if entity @e[tag=pve.zombie,tag=hitted] run function gun/3/hit 
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:10}} if entity @e[tag=pve.zombie,tag=hitted] run function gun/custom/hit
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:-1}} if entity @a[team=job_pvp,tag=hitted] run function gun/job_1/hit
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:-2}} if entity @a[team=job_pvp,tag=hitted] run function gun/job_2/hit
tag @e[tag=hitted] remove hitted
execute if score @s PSTJ matches 0.. run scoreboard players remove @s PSTJ 1