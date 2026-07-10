summon minecraft:marker ~ ~ ~ {Tags:["sneak.new","sneak.disa"]}
scoreboard players set @e[type=marker,tag=sneak.new] snow.tick 8
scoreboard players operation @e[type=marker,tag=sneak.new] sneak.color = @s sneak.color
tag @e[type=marker,tag=sneak.new] remove sneak.new