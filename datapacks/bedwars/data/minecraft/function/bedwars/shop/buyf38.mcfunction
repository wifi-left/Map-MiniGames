##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
## Buy.-2
execute if score @s bw.tmp.ir matches 12.. run clear @s iron_ingot 12
execute unless score @s bw.tmp.ir matches 12.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s bw.tmp.ir matches 12.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s bw.tmp.ir matches 12.. run tellraw @s ["§a你购买了§6防爆玻璃 * 4"]
execute if score @s bw.tmp.ir matches 12.. run give @s[team=bw.blue] blue_stained_glass[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:[can_place_on,can_break]},can_break=[{blocks:"#minecraft:bedblocks"}],item_name='防爆玻璃'] 4
execute if score @s bw.tmp.ir matches 12.. run give @s[team=bw.yellow] yellow_stained_glass[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:[can_place_on,can_break]},can_break=[{blocks:"#minecraft:bedblocks"}],item_name='防爆玻璃'] 4
execute if score @s bw.tmp.ir matches 12.. run give @s[team=bw.green] lime_stained_glass[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:[can_place_on,can_break]},can_break=[{blocks:"#minecraft:bedblocks"}],item_name='防爆玻璃'] 4
execute if score @s bw.tmp.ir matches 12.. run give @s[team=bw.red] red_stained_glass[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:[can_place_on,can_break]},can_break=[{blocks:"#minecraft:bedblocks"}],item_name='防爆玻璃'] 4

