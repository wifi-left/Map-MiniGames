##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
#-34
execute if score @s bw.tmp.ir matches 40.. run clear @s iron_ingot 40
execute unless score @s bw.tmp.ir matches 40.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s bw.tmp.ir matches 40.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s bw.tmp.ir matches 40.. run tellraw @s ["§a你购买了§6风弹 * 1"]
execute if score @s bw.tmp.ir matches 40.. run give @s wind_charge[item_name="\u00a7aW\u00a7bi\u00a7cn\u00a7dd \u00a7eC\u00a7fh\u00a71a\u00a72r\u00a73g\u00a76e",can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:[can_place_on,can_break]},can_break=[{blocks:"#minecraft:bedblocks"}]]

