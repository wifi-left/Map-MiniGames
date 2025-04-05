summon minecraft:marker ~ ~ ~ {Tags:["snow.new","snow.disa"],Invulnerable:1b,Silent:1b,NoGravity:1b}
scoreboard players set @e[type=marker,tag=snow.new] snow.tick 12
tag @e[type=marker,tag=snow.new] remove snow.new
