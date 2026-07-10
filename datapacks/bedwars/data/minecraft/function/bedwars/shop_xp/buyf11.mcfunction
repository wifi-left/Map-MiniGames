##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# REPLACED

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
## Buy.-11
tellraw @s[scores={bw.armor=2..}] ["§c你已经购买过这个东西了！"]
playsound minecraft:entity.enderman.teleport player @s[scores={bw.armor=2..}] ~ ~ ~ 1 0 1
execute if score @s[scores={bw.armor=..1}] xp matches 240.. run xp add @s -240 levels
execute unless score @s[scores={bw.armor=..1}] xp matches 240.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s[scores={bw.armor=..1}] xp matches 240.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s[scores={bw.armor=..1}] xp matches 240.. run tellraw @s ["§a你购买了§6永久的铁装备"]
execute if score @s[scores={bw.armor=..1}] xp matches 240.. run scoreboard players set @s bw.armor 2

