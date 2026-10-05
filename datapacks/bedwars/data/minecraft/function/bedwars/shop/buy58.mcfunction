##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
# 商店② 漂浮羽毛 -58：6 个金锭
execute if score @s bw.tmp.gd matches 6.. run clear @s gold_ingot 6
execute unless score @s bw.tmp.gd matches 6.. run tellraw @s ["§c你的资源不够买这个东西！"]
execute unless score @s bw.tmp.gd matches 6.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s bw.tmp.gd matches 6.. run tellraw @s ["§a你购买了 §f漂浮羽毛"]
execute if score @s bw.tmp.gd matches 6.. run function minecraft:bedwars/item/give_levitation
