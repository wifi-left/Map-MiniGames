# 石剑：按本队当前的锋利等级（0..4）发放；被 shop/buyf25 与 shop_xp/buyf25 调用
scoreboard players set bw.buy.sharp.tmp board 0
execute as @s[team=bw.green] run scoreboard players operation bw.buy.sharp.tmp board = bw.sharpness.green board
execute as @s[team=bw.red] run scoreboard players operation bw.buy.sharp.tmp board = bw.sharpness.red board
execute as @s[team=bw.blue] run scoreboard players operation bw.buy.sharp.tmp board = bw.sharpness.blue board
execute as @s[team=bw.yellow] run scoreboard players operation bw.buy.sharp.tmp board = bw.sharpness.yellow board

execute if score bw.buy.sharp.tmp board matches 0 run give @s stone_sword[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 1
execute if score bw.buy.sharp.tmp board matches 1 run give @s stone_sword[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}],enchantments={sharpness:1}] 1
execute if score bw.buy.sharp.tmp board matches 2 run give @s stone_sword[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}],enchantments={sharpness:2}] 1
execute if score bw.buy.sharp.tmp board matches 3 run give @s stone_sword[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}],enchantments={sharpness:3}] 1
execute if score bw.buy.sharp.tmp board matches 4 run give @s stone_sword[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}],enchantments={sharpness:4}] 1
