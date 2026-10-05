##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
# 蠹虫雪球 §7× 2（经验模式）：24 经验
execute if score @s xp matches 24.. run xp add @s -24 levels
execute unless score @s xp matches 24.. run tellraw @s ["§c你的资源不够买这个东西！"]
execute unless score @s xp matches 24.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s xp matches 24.. run tellraw @s ["§a你购买了 §f蠹虫雪球 §7× 2"]
execute if score @s xp matches 24.. run function minecraft:bedwars/item/give_bug
