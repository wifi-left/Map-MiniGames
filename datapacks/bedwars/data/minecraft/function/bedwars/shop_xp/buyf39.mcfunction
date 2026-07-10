##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# REPLACED

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
## Buy.-2
execute if score @s xp matches 16.. run xp add @s -16 levels
execute unless score @s xp matches 16.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s xp matches 16.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s xp matches 16.. run tellraw @s ["§a你购买了§6切制砂岩 * 16"]
execute if score @s xp matches 12.. run give @s cut_sandstone[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:[can_place_on,can_break]},can_break=[{blocks:"#minecraft:bedblocks"}]] 16