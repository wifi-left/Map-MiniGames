##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0
## Buy.-25

scoreboard players set bw.buy.sharpness.tmp board 0
execute as @s[team=bw.green] if score bw.sharpness.green board matches 1.. run scoreboard players set bw.buy.sharpness.tmp board 1
execute as @s[team=bw.red] if score bw.sharpness.red board matches 1.. run scoreboard players set bw.buy.sharpness.tmp board 1
execute as @s[team=bw.yellow] if score bw.sharpness.yellow board matches 1.. run scoreboard players set bw.buy.sharpness.tmp board 1
execute as @s[team=bw.blue] if score bw.sharpness.blue board matches 1.. run scoreboard players set bw.buy.sharpness.tmp board 1

execute if score @s bw.tmp.ir matches 10.. run clear @s iron_ingot 10
execute unless score @s bw.tmp.ir matches 10.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s bw.tmp.ir matches 10.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s bw.tmp.ir matches 10.. run tellraw @s ["§a你购买了§6Stone Sword * 1"]
clear @s wooden_sword
execute if score @s bw.tmp.ir matches 10.. if score bw.buy.sharpness.tmp board matches 0 run give @s stone_sword[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:[can_place_on,can_break]},can_break=[{blocks:"#minecraft:bedblocks"}]] 1
execute if score @s bw.tmp.ir matches 10.. if score bw.buy.sharpness.tmp board matches 1 run give @s stone_sword[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:[can_place_on,can_break]},can_break=[{blocks:"#minecraft:bedblocks"}],enchantments={sharpness:1}] 1

