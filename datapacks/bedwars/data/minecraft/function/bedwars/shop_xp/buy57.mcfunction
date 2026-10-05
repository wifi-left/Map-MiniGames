##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
# 瞬间治疗 II 药水（经验模式）：60 经验
execute if score @s xp matches 60.. run xp add @s -60 levels
execute unless score @s xp matches 60.. run tellraw @s ["§c你的资源不够买这个东西！"]
execute unless score @s xp matches 60.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s xp matches 60.. run tellraw @s ["§a你购买了 §f瞬间治疗 II 药水"]
execute if score @s xp matches 60.. run function minecraft:bedwars/item/give_potion_heal
