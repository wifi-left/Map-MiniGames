##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# REPLACED

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
## Buy.-4
tellraw @s[tag=bw.shears] ["§c你已经购买过这个东西了！"]
playsound minecraft:entity.enderman.teleport player @s[tag=bw.shears] ~ ~ ~ 1 0 1
execute if score @s[tag=!bw.shears] xp matches 20.. run xp add @s -20 levels
execute unless score @s[tag=!bw.shears] xp matches 20.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s[tag=!bw.shears] xp matches 20.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s[tag=!bw.shears] xp matches 20.. run tellraw @s ["§a你购买了§6永久的Shears"]
execute if score @s[tag=!bw.shears] xp matches 20.. run tag @s add bw.shears

