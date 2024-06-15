##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score @s bw.tmp.ir matches 1.. run give @s iron_ingot[can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false}] 1
execute if score @s bw.tmp.dm matches 1.. run give @s diamond[can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false}] 1
execute if score @s bw.tmp.gd matches 1.. run give @s gold_ingot[can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false}] 1
execute if score @s bw.tmp.em matches 1.. run give @s emerald[can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false}] 1

