##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
forceload add 3 -49 -47 -99

fill 3 29 -49 -47 20 -99 air replace snow
fill 3 20 -49 -47 10 -99 air replace snow
fill 3 10 -49 -47 3 -99 air replace snow
fill 3 29 -49 -47 20 -99 air replace torch
fill 3 20 -49 -47 10 -99 air replace torch
fill 3 10 -49 -47 3 -99 air replace torch
fill 3 29 -49 -47 20 -99 air replace #minecraft:doors
fill 3 20 -49 -47 10 -99 air replace #minecraft:doors
fill 3 10 -49 -47 3 -99 air replace #minecraft:doors
fill 3 29 -49 -47 20 -99 air
fill 3 20 -49 -47 10 -99 air
fill 3 10 -49 -47 3 -99 air
execute positioned -21.5 11 -73.5 run kill @e[type=item,distance=0..40]

scoreboard players set snow.sq board 0

## scoreboard players set snow.mode board 0
scoreboard players add snow.mode board 0
execute if score snow.mode board matches 0..0 run function minecraft:snow/map/demo
execute if score snow.mode board matches 1..1 run function minecraft:snow/map/smallvillage
execute if score snow.mode board matches 2..2 run function minecraft:snow/map/towner
execute if score snow.mode board matches 3..3 run function minecraft:snow/map/onlyone

kill @e[tag=snow.tp]

forceload remove 3 -49 -47 -99
schedule clear minecraft:snow/final
schedule clear minecraft:snow/smaller/remove1

