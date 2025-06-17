##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if score bw.state state matches 1.. as @a[tag=bw.play] at @s as @e[distance=0..5,type=item,tag=!flaged] run data merge entity @s {Item:{components:{"minecraft:can_break":[{blocks:"#minecraft:bedblocks"}],tooltip_display:{hidden_components:["minecraft:can_break","minecraft:can_place_on"]},"minecraft:can_place_on":[{blocks:"#minecraft:bwplace"}]}}}
execute if score bw.state state matches 1.. as @a[tag=bw.play] at @s as @e[distance=0..5,type=item,tag=!flaged] if data entity @s {Item:{id:"minecraft:iron_ingot"}} run data modify entity @s Item.components."minecraft:custom_data".xp set value 1
execute if score bw.state state matches 1.. as @a[tag=bw.play] at @s as @e[distance=0..5,type=item,tag=!flaged] if data entity @s {Item:{id:"minecraft:gold_ingot"}} run data modify entity @s Item.components."minecraft:custom_data".xp set value 1
execute if score bw.state state matches 1.. as @a[tag=bw.play] at @s as @e[distance=0..5,type=item,tag=!flaged] if data entity @s {Item:{id:"minecraft:emerald"}} run data modify entity @s Item.components."minecraft:custom_data".xp set value 1