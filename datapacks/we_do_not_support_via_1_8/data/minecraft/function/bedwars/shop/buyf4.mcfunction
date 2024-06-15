##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0
## Buy.-4
tellraw @s[tag=bw.shears] ["\u00a7c你已经购买过这个东西了！"]
playsound minecraft:entity.enderman.teleport player @s[tag=bw.shears] ~ ~ ~ 1 0 1
execute if score @s[tag=!bw.shears] bw.tmp.ir matches 20.. run clear @s iron_ingot 20
execute unless score @s[tag=!bw.shears] bw.tmp.ir matches 20.. run tellraw @s ["\u00a7c你的资源不够买这个东西!"]
execute unless score @s[tag=!bw.shears] bw.tmp.ir matches 20.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s[tag=!bw.shears] bw.tmp.ir matches 20.. run tellraw @s ["\u00a7a你购买了\u00a76永久的Shears"]
execute if score @s[tag=!bw.shears] bw.tmp.ir matches 20.. run tag @s add bw.shears
