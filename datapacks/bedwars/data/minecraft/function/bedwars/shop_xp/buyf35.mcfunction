##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# REPLACED

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
#-34
execute if score @s xp matches 160.. run xp add @s -160 levels
execute unless score @s xp matches 160.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s xp matches 160.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s xp matches 160.. run tellraw @s ["§a你购买了§6TNT Sheep * 1"]
execute if score @s xp matches 160.. run give @s sheep_spawn_egg[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:[can_place_on,can_break]},can_break=[{blocks:"#minecraft:bedblocks"}],entity_data={id:"minecraft:marker",Tags:["tntsheep.spawn"]},custom_name="\u00a7cTNT Sheep",lore=["\u00a7a仅可用于破坏方块"]]

