execute if score @s blaze.trigger matches -1 run dialog clear @s
execute if score @s blaze.trigger matches -1 run scoreboard players set @s blaze.trigger 0
execute if score @s blaze.trigger matches 0 run return 0
tag @s[tag=blaze.shop.ok] remove blaze.shop.ok
## blue position
execute if score @s blaze.trigger matches 1.. in killerworld positioned 63 -27 541 run tag @s[distance=..15,tag=blaze.player] add blaze.shop.ok
## red position
execute if score @s blaze.trigger matches 1.. in killerworld positioned 58 -27 209 run tag @s[distance=..15,tag=blaze.player] add blaze.shop.ok
## Mid for 警
# A
execute if score @s blaze.trigger matches 1.. if score blaze.mode board matches 3 if score blaze.police.state board matches 1 in killerworld positioned 54 -15 364 run tag @s[distance=..8,tag=blaze.player,team=blaze.team.a] add blaze.shop.ok
# B
execute if score @s blaze.trigger matches 1.. if score blaze.mode board matches 3 if score blaze.police.state board matches 2 in killerworld positioned 54 -15 364 run tag @s[distance=..8,tag=blaze.player,team=blaze.team.b] add blaze.shop.ok

execute if score @s blaze.trigger matches 1.. unless entity @s[tag=blaze.shop.ok] run tellraw @s ["\u00a7c商店只能在出生点附近使用！"]
execute if score @s blaze.trigger matches 1.. unless entity @s[tag=blaze.shop.ok] run dialog clear @s
execute if score @s blaze.trigger matches 1.. unless entity @s[tag=blaze.shop.ok] run scoreboard players reset @s blaze.trigger
execute if score @s blaze.trigger matches 1.. unless entity @s[tag=blaze.shop.ok] run return 0
tag @s[tag=blaze.shop.ok] remove blaze.shop.ok

execute if score @s blaze.trigger matches 1 run function minecraft:blaze/during/shop/1_glass_pickaxe
execute if score @s blaze.trigger matches 2 run function minecraft:blaze/during/shop/2_gooden_apple
execute if score @s blaze.trigger matches 3 run function minecraft:blaze/during/shop/3_arrow
execute if score @s blaze.trigger matches 4 run function minecraft:blaze/during/shop/4_bow
execute if score @s blaze.trigger matches 5 run function minecraft:blaze/during/shop/5_stone_sword
execute if score @s blaze.trigger matches 6 run function minecraft:blaze/during/shop/6_stone_axe
execute if score @s blaze.trigger matches 7 run function minecraft:blaze/during/shop/7_wind_charge
execute if score @s blaze.trigger matches 8 run function minecraft:blaze/during/shop/8_spectral_arrow
execute if score @s blaze.trigger matches 9 run function minecraft:blaze/during/shop/9_back_point
execute if score @s blaze.trigger matches 10 run function minecraft:blaze/during/shop/10_fly
execute if score @s blaze.trigger matches 11 run function minecraft:blaze/during/shop/11_milk

# 职业，返回不再打开
execute if score @s blaze.trigger matches -100..-2 run return run function minecraft:blaze/during/job/main

scoreboard players reset @s blaze.trigger
scoreboard players enable @s blaze.trigger
# dialog show @s blaze/shop_list