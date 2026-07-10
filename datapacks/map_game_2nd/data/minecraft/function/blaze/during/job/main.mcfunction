tag @s[tag=blaze.shop.ok] remove blaze.shop.ok

execute if score blaze.special state matches 2 run tellraw @s ["\n\u00a7b 目前特殊模式：饥饿游戏模式。在该模式下，您无法选择职业，但您可以在地图的木桶中获取装备！\n"]
execute if score blaze.special state matches 2 run dialog clear @s
execute if score blaze.special state matches 2 run scoreboard players reset @s blaze.trigger
execute if score blaze.special state matches 2 run return 0

# 准备阶段
execute if score blaze.state state matches 1 run tag @s add blaze.shop.ok
execute if score blaze.state state matches 11 run tag @s add blaze.shop.ok
## blue position
execute in killerworld positioned 63 -27 541 run tag @s[distance=..15,tag=blaze.player] add blaze.shop.ok
## red position
execute in killerworld positioned 58 -27 209 run tag @s[distance=..15,tag=blaze.player] add blaze.shop.ok
## Mid for 警
# A
execute if score blaze.mode board matches 3 if score blaze.police.state board matches 1 in killerworld positioned 54 -15 364 run tag @s[distance=..8,tag=blaze.player,team=blaze.team.a] add blaze.shop.ok
# B
execute if score blaze.mode board matches 3 if score blaze.police.state board matches 2 in killerworld positioned 54 -15 364 run tag @s[distance=..8,tag=blaze.player,team=blaze.team.b] add blaze.shop.ok

execute unless entity @s[tag=blaze.shop.ok] run tellraw @s ["\u00a7c职业选择只能在出生点附近使用！"]
execute unless entity @s[tag=blaze.shop.ok] run dialog clear @s
execute unless entity @s[tag=blaze.shop.ok] run scoreboard players reset @s blaze.trigger
execute unless entity @s[tag=blaze.shop.ok] run return 0
tag @s[tag=blaze.shop.ok] remove blaze.shop.ok

execute if score @s blaze.trigger matches -2 run function minecraft:blaze/during/job/f2_warrior
execute if score @s blaze.trigger matches -3 run function minecraft:blaze/during/job/f3_archer
execute if score @s blaze.trigger matches -4 run function minecraft:blaze/during/job/f4_tank
execute if score @s blaze.trigger matches -5 run function minecraft:blaze/during/job/f5_assassin
execute if score @s blaze.trigger matches -6 run function minecraft:blaze/during/job/f6_mystia
execute if score @s blaze.trigger matches -7 run function minecraft:blaze/during/job/f7_baka
execute if score @s blaze.trigger matches -8 run function minecraft:blaze/during/job/f8_miner
execute if score @s blaze.trigger matches -9 run function minecraft:blaze/during/job/f9_blacksmith
execute if score @s blaze.trigger matches -10 run function minecraft:blaze/during/job/f10_sniper
execute if score @s blaze.trigger matches -11 run function minecraft:blaze/during/job/f11_fishingman

# 职业，关闭dialog
dialog clear @s

scoreboard players reset @s blaze.trigger
scoreboard players enable @s blaze.trigger
# dialog show @s blaze/shop_list
return 0