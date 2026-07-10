# execute if score bw.mode state matches 3 run function minecraft:bedwars/special/xp_purchase
# execute if score bw.mode state matches 7 run function minecraft:bedwars/special/xp_purchase
# IRON INGOT
scoreboard players reset @s bw.board
execute as @s store success score @s bw.board run clear @s iron_ingot[custom_data~{shop:iron_ingot}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.tmp
execute as @s[tag=bw.buy.tmp] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s[tag=bw.buy.tmp] at @s run function minecraft:bedwars/special/xp/shop_iron_ingot
tag @s remove bw.buy.tmp

scoreboard players reset @s bw.board
execute as @s store success score @s bw.board run clear @s gold_ingot[custom_data~{shop:gold_ingot}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.tmp
execute as @s[tag=bw.buy.tmp] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s[tag=bw.buy.tmp] at @s run function minecraft:bedwars/special/xp/shop_gold_ingot
tag @s remove bw.buy.tmp

scoreboard players reset @s bw.board
execute as @s store success score @s bw.board run clear @s emerald[custom_data~{shop:emerald}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.tmp
execute as @s[tag=bw.buy.tmp] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s[tag=bw.buy.tmp] at @s run function minecraft:bedwars/special/xp/shop_emerald
tag @s remove bw.buy.tmp