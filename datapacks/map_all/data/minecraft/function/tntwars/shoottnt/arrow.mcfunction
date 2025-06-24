##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add tnt.arrowold
summon tnt ~ ~ ~ {Tags:["tntwars.new"],fuse:80s}
ride @n[type=tnt,tag=tntwars.new,distance=..5] mount @s
tag @n[type=tnt,tag=tntwars.new,distance=..5] remove tntwars.new
