##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0
## Buy.-10
tellraw @s[scores={bw.armor=1..}] ["\u00a7c你已经购买过这个东西了！"]
playsound minecraft:entity.enderman.teleport player @s[scores={bw.armor=1..}] ~ ~ ~ 1 0 1
execute if score @s[scores={bw.armor=..0}] bw.tmp.ir matches 40.. run clear @s iron_ingot 40
execute unless score @s[scores={bw.armor=..0}] bw.tmp.ir matches 40.. run tellraw @s ["\u00a7c你的资源不够买这个东西!"]
execute unless score @s[scores={bw.armor=..0}] bw.tmp.ir matches 40.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s[scores={bw.armor=..0}] bw.tmp.ir matches 40.. run tellraw @s ["\u00a7a你购买了\u00a76永久的Chainmail Armor"]
execute if score @s[scores={bw.armor=..0}] bw.tmp.ir matches 40.. run scoreboard players set @s bw.armor 1
