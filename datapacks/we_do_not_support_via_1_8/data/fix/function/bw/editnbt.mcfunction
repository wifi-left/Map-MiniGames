##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute if score bw.state state matches 1.. as @a[tag=bw.play] at @s as @e[distance=0..5,type=item,tag=!flaged] run data merge entity @s {Item:{tag:{HideFlags:63,CanDestroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}}
