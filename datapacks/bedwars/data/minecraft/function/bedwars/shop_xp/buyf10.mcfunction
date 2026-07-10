##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# REPLACED

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
## Buy.-10
tellraw @s[scores={bw.armor=1..}] ["§c你已经购买过这个东西了！"]
playsound minecraft:entity.enderman.teleport player @s[scores={bw.armor=1..}] ~ ~ ~ 1 0 1
execute if score @s[scores={bw.armor=..0}] xp matches 40.. run xp add @s -40 levels
execute unless score @s[scores={bw.armor=..0}] xp matches 40.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s[scores={bw.armor=..0}] xp matches 40.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s[scores={bw.armor=..0}] xp matches 40.. run tellraw @s ["§a你购买了§6永久的锁链装备"]
execute if score @s[scores={bw.armor=..0}] xp matches 40.. run scoreboard players set @s bw.armor 1

