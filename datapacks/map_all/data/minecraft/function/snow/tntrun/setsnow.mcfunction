##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
summon minecraft:marker ~ ~ ~ {Tags:["snow.new","snow.disa"],Invulnerable:1b,Silent:1b,NoGravity:1b}
scoreboard players set @e[type=marker,tag=snow.new] snow.tick 12
tag @e[type=marker,tag=snow.new] remove snow.new

