##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

tellraw @s[tag=bw.speed] ["§c你已经购买过这个东西了！"]
playsound minecraft:entity.enderman.teleport player @s[tag=bw.speed] ~ ~ ~ 1 0 1
execute if score @s[tag=!bw.speed] bw.tmp.dm matches 6.. run clear @s diamond 6
execute unless score @s[tag=!bw.speed] bw.tmp.dm matches 6.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s[tag=!bw.speed] bw.tmp.dm matches 6.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s[tag=!bw.speed,team=bw.green] bw.tmp.dm matches 6.. run tellraw @a[team=bw.green] [{"selector":"@s"},"§a购买了§6团队速度加成"]
execute if score @s[tag=!bw.speed,team=bw.green] bw.tmp.dm matches 6.. run tag @a[team=bw.green] add bw.speed

execute if score @s[tag=!bw.speed,team=bw.red] bw.tmp.dm matches 6.. run tellraw @a[team=bw.red] [{"selector":"@s"},"§a购买了§6团队速度加成"]
execute if score @s[tag=!bw.speed,team=bw.red] bw.tmp.dm matches 6.. run tag @a[team=bw.red] add bw.speed

execute if score @s[tag=!bw.speed,team=bw.blue] bw.tmp.dm matches 6.. run tellraw @a[team=bw.blue] [{"selector":"@s"},"§a购买了§6团队速度加成"]
execute if score @s[tag=!bw.speed,team=bw.blue] bw.tmp.dm matches 6.. run tag @a[team=bw.blue] add bw.speed

execute if score @s[tag=!bw.speed,team=bw.yellow] bw.tmp.dm matches 6.. run tellraw @a[team=bw.yellow] [{"selector":"@s"},"§a购买了§6团队速度加成"]
execute if score @s[tag=!bw.speed,team=bw.yellow] bw.tmp.dm matches 6.. run tag @a[team=bw.yellow] add bw.speed

