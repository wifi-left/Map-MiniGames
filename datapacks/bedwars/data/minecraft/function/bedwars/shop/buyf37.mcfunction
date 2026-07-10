##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
## Buy.-31
execute if score @s bw.tmp.gd matches 20.. run clear @s gold_ingot 20
execute unless score @s bw.tmp.gd matches 20.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s bw.tmp.gd matches 20.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s bw.tmp.gd matches 20.. run tellraw @s ["§a你购买了§6好弓 * 1"]
execute if score @s bw.tmp.gd matches 20.. run give @s bow[enchantments={"minecraft:power":1s},tooltip_display={hidden_components:[unbreakable,can_place_on,can_break]},unbreakable={},can_place_on=[{blocks:"#minecraft:bwplace"}],can_break=[{blocks:"#minecraft:bedblocks"}]] 1


