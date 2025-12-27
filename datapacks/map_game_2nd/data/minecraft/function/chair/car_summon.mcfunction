# spreadplayers -166.0 -394.0 0 16 under -58 false @s
scoreboard players remove chair.count board 1
execute in overworld positioned -166.0 -61 -394.0 run summon minecart ~ ~ ~ {Invulnerable:true,CustomName:{text:"板凳",color:gold,bold:true},CustomNameVisible:true,Tags:["chair.chair","chair.new"],data:{way:{xspeed:0.1d,zspeed:0.1d}}}

team join chair @e[tag=chair.new]

execute store result score random.x temp run random value 1..2
execute store result score random.z temp run random value 1..2

execute if score random.x temp matches 1 as @e[tag=chair.new] store result entity @s data.way.xspeed double 0.01 run random value 10..200
execute if score random.x temp matches 2 as @e[tag=chair.new] store result entity @s data.way.xspeed double 0.01 run random value -200..-10

execute if score random.z temp matches 1 as @e[tag=chair.new] store result entity @s data.way.zspeed double 0.01 run random value 10..200
execute if score random.z temp matches 2 as @e[tag=chair.new] store result entity @s data.way.zspeed double 0.01 run random value -200..-10

execute as @e[tag=chair.new,type=minecart] in overworld run spreadplayers -166.0 -394.0 0 10 under -58 false @s
tag @e[tag=chair.new,type=minecart] remove chair.new
execute if score chair.count board matches 1.. run function minecraft:chair/car_summon
