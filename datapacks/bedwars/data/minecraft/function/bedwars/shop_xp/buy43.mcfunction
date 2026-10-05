##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
# 商店② 盾 -43（经验模式）：600 经验
execute if score @s xp matches 600.. run xp add @s -600 levels
execute unless score @s xp matches 600.. run tellraw @s ["§c你的资源不够买这个东西！"]
execute unless score @s xp matches 600.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s xp matches 600.. run tellraw @s ["§a你购买了 §f盾 §7× 1"]
execute if score @s xp matches 600.. run give @s shield[item_name="盾",can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]]
