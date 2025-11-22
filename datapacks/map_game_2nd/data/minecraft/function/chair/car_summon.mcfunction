# spreadplayers -166.0 -394.0 0 16 under -58 false @s
scoreboard players remove chair.count board 1
execute in overworld positioned -166.0 -61 -394.0 run summon minecart ~ ~ ~ {Invulnerable:true,CustomName:{text:"椅子",color:gold,bold:true},CustomNameVisible:true,Tags:["chair.chair","chair.new"]}
execute as @e[tag=chair.new,type=minecart] in overworld run spreadplayers -166.0 -394.0 0 6 under -58 false @s
tag @e[tag=chair.new,type=minecart] remove chair.new
execute if score chair.count board matches 1.. run function minecraft:chair/car_summon
