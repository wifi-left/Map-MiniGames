##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# REPLACED

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
## Buy.-19
tellraw @s[scores={bw.pickaxe=3..}] ["§c你已经购买过这个东西了！"]
playsound minecraft:entity.enderman.teleport player @s[scores={bw.pickaxe=3..}] ~ ~ ~ 1 0 1
tellraw @s[scores={bw.pickaxe=..1}] ["§c你需要先购买上一级镐子！"]
playsound minecraft:entity.enderman.teleport player @s[scores={bw.pickaxe=..1}] ~ ~ ~ 1 0 1
execute if score @s[scores={bw.pickaxe=2..2}] xp matches 120.. run xp add @s -120 levels
execute unless score @s[scores={bw.pickaxe=2..2}] xp matches 120.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s[scores={bw.pickaxe=2..2}] xp matches 120.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s[scores={bw.pickaxe=2..2}] xp matches 120.. run tellraw @s ["§a你购买了§6永久的Pickaxe (III) (死亡降级)"]
execute if score @s[scores={bw.pickaxe=2..2}] xp matches 120.. run scoreboard players set @s bw.pickaxe 3

