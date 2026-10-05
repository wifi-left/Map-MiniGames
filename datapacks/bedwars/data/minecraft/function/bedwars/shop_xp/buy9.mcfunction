##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# REPLACED

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0

execute if score @s xp matches 60.. run xp add @s -60 levels
execute unless score @s xp matches 60.. run tellraw @s ["§c你的资源不够买这个东西！"]
execute unless score @s xp matches 60.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s xp matches 60.. run tellraw @s ["§a你购买了 §f金苹果 §7× 1"]
execute if score @s xp matches 60.. run give @s golden_apple[item_name="金苹果",can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 1