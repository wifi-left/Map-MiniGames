##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
# 抗性提升药水（经验模式）：900 经验
execute if score @s xp matches 900.. run xp add @s -900 levels
execute unless score @s xp matches 900.. run tellraw @s ["§c你的资源不够买这个东西！"]
execute unless score @s xp matches 900.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s xp matches 900.. run tellraw @s ["§a你购买了 §f抗性提升药水"]
execute if score @s xp matches 900.. run function minecraft:bedwars/item/give_potion_resistance
