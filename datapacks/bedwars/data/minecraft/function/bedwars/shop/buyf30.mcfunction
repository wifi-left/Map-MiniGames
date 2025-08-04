##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
## Buy.-30
execute if score @s bw.tmp.gd matches 12.. run clear @s gold_ingot 12
execute unless score @s bw.tmp.gd matches 12.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s bw.tmp.gd matches 12.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s bw.tmp.gd matches 12.. run tellraw @s ["§a你购买了§6Normal Bow"]
execute if score @s bw.tmp.gd matches 12.. run give @s bow[tooltip_display={hidden_components:[unbreakable,can_place_on,can_break]},unbreakable={},can_place_on=[{blocks:"#minecraft:bwplace"}],can_break=[{blocks:"#minecraft:bedblocks"}]] 1


