##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
summon marker ~ ~10 ~ {Tags:["boat.trap","trap1","boat.new"]}
scoreboard players set @e[tag=boat.new] park.uuid 100
tag @e[tag=boat.new] remove boat.new
particle lava ~ ~ ~ 1 1 1 1 100 normal
