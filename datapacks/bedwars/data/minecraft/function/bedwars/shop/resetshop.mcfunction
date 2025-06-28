##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

# execute as @e[tag=dmshop] at @s run data modify block ~ ~-1 ~ Items set from storage minecraft:dmshop Item
execute as @e[tag=dmshop] at @s run function minecraft:bedwars/reset_shop/dmshop
execute unless score bw.mode state matches 7 unless score bw.mode state matches 3 as @e[tag=shop] at @s run function minecraft:bedwars/reset_shop/shop1
execute unless score bw.mode state matches 7 unless score bw.mode state matches 3 as @e[tag=shop2] at @s run function minecraft:bedwars/reset_shop/shop2

execute if score bw.mode state matches 3 run function minecraft:bedwars/special/xp_shop
execute if score bw.mode state matches 7 run function minecraft:bedwars/special/xp_shop