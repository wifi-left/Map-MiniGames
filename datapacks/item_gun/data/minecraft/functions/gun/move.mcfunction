##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if data entity @s {data:{guntype:1}} run particle minecraft:dust{color:[0.059, 0.973, 0.439],scale:1} ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:7}} run particle minecraft:dust{color:[0.404, 0.459, 0.427],scale:1} ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:10}} run particle minecraft:dust{color:[0.973, 0.545, 0.059],scale:1} ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:2}} run particle minecraft:lava ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:3}} run particle minecraft:dust{color:[0.82, 0.059, 0.973],scale:1} ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:-1}} run particle minecraft:dust{color:[1, 0.125, 0.533],scale:1} ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:-2}} run particle minecraft:dust{color:[0.455, 0.204, 0.322],scale:1} ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:11}} run particle minecraft:dust{color:[0.455, 0.204, 0.322],scale:1} ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:12}} run particle minecraft:dust{color:[0, 1, 0.835],scale:1} ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:11}} run particle minecraft:campfire_signal_smoke ~ ~ ~ 0 0 0 1 1
execute if score @s PSTJ matches ..-1 run function gun/die
execute if score @s PSTJ matches 0.. if block ^ ^ ^1 #gunblock run function gun/die
execute if score @s PSTJ matches 0.. if block ^ ^ ^0.5 #gunblock run function gun/die
# park.uuid
execute if score @s PSTJ matches 0.. run tp @s ^ ^ ^1
execute unless data entity @s {data:{guntype:12}} if score @s PSTJ matches 0.. run function gun/testfortarget
execute unless data entity @s {data:{guntype:12}} if score @s PSTJ matches 0.. run function gun/testfortarget2
execute if data entity @s {data:{guntype:11}} if score @s PSTJ matches 0.. at @s run function gun/testfortarget3

execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:7}} if entity @e[tag=hitted] run function gun/7/hit
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:1}} if entity @e[tag=hitted] run function gun/1/hit
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:2}} if entity @e[tag=hitted] run function gun/2/hit
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:3}} if entity @e[tag=hitted] run function gun/3/hit
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:10}} if entity @e[tag=hitted] run function gun/custom/hit
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:11}} if entity @e[tag=hitted] run function gun/pao/hit
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:12}} if entity @e[team=play.zombie,tag=hitted] run function gun/zombiegun/hit
# execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:11}} if entity @a[tag=pve.zombie,tag=hitted] run say hi

execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:-1}} if entity @a[team=job_pvp,tag=hitted] run function gun/job_1/hit
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:-2}} if entity @a[team=job_pvp,tag=hitted] run function gun/job_2/hit
tag @e[tag=hitted] remove hitted
# execute if score @s PSTJ matches 0.. run scoreboard players remove @s PSTJ 1
execute if score @s PSTJ matches 0.. run scoreboard players remove @s PSTJ 1
