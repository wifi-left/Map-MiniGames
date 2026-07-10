##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# REPLACED

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
## Buy.-31
execute if score @s xp matches 400.. run xp add @s -400 levels
execute unless score @s xp matches 400.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s xp matches 400.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s xp matches 400.. run tellraw @s ["§a你购买了§6好弓 * 1"]
execute if score @s xp matches 400.. run give @s bow[enchantments={"minecraft:power":1s},tooltip_display={hidden_components:[enchantments,unbreakable,can_place_on,can_break]},unbreakable={},can_place_on=[{blocks:"#minecraft:bwplace"}],can_break=[{blocks:"#minecraft:bedblocks"}]] 1


