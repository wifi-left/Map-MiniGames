##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# REPLACED

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
## Buy.-3
execute if score @s xp matches 24.. run xp add @s -24 levels
execute unless score @s xp matches 24.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s xp matches 24.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s xp matches 24.. run tellraw @s ["§a你购买了§6End Stone * 12"]
execute if score @s xp matches 24.. run give @s end_stone[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:[can_place_on,can_break]},can_break=[{blocks:"#minecraft:bedblocks"}]] 12

