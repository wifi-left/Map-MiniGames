##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0
## Buy.-21
execute if score @s bw.tmp.gd matches 8.. run clear @s gold_ingot 8
execute unless score @s bw.tmp.gd matches 8.. run tellraw @s ["\u00a7c你的资源不够买这个东西!"]
execute unless score @s bw.tmp.gd matches 8.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s bw.tmp.gd matches 8.. run tellraw @s ["\u00a7a你购买了\u00a76Water Bucket * 1"]
execute if score @s bw.tmp.gd matches 8.. run give @s water_bucket[can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false},can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false}] 1
