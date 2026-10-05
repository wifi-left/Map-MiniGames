##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
# 无敌卷轴：2 个绿宝石
execute if score @s bw.tmp.em matches 2.. run clear @s emerald 2
execute unless score @s bw.tmp.em matches 2.. run tellraw @s ["§c你的资源不够买这个东西！"]
execute unless score @s bw.tmp.em matches 2.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s bw.tmp.em matches 2.. run tellraw @s ["§a你购买了 §f无敌卷轴"]
execute if score @s bw.tmp.em matches 2.. run function minecraft:bedwars/item/give_invul
