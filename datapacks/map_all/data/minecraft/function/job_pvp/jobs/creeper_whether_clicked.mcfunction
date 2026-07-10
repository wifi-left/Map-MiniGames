scoreboard players set temp temp 0
execute on vehicle run scoreboard players set temp temp 1
execute if score temp temp matches 0 run data merge entity @s {Fuse:10,ignited:true}
execute if score temp temp matches 0 run tag @s remove job_pvp.creeper