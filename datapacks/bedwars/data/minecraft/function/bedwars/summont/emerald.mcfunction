##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute store result score temp board run data get entity @e[type=item,distance=0..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:emerald"}}] Item.count
function fix:bw/emspan
