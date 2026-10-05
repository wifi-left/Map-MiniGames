##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
## Buy.-26

execute if score @s bw.tmp.gd matches 7.. run clear @s gold_ingot 7
execute unless score @s bw.tmp.gd matches 7.. run tellraw @s ["§c你的资源不够买这个东西！"]
execute unless score @s bw.tmp.gd matches 7.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s bw.tmp.gd matches 7.. run tellraw @s ["§a你购买了 §f铁剑 §7× 1"]
clear @s wooden_sword
execute if score @s bw.tmp.gd matches 7.. run function minecraft:bedwars/item/sword/iron


