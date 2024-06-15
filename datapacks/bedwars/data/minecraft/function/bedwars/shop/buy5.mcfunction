##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

tellraw @s[tag=bw.attack] ["\u00a7c你已经购买过这个东西了！"]
playsound minecraft:entity.enderman.teleport player @s[tag=bw.attack] ~ ~ ~ 1 0 1
execute if score @s[tag=!bw.attack] bw.tmp.dm matches 8.. run clear @s diamond 8
execute unless score @s[tag=!bw.attack] bw.tmp.dm matches 8.. run tellraw @s ["\u00a7c你的资源不够买这个东西!"]
execute unless score @s[tag=!bw.attack] bw.tmp.dm matches 8.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s[tag=!bw.attack,team=bw.green] bw.tmp.dm matches 8.. run tellraw @a[team=bw.green] [{"selector":"@s"},"\u00a7a购买了\u00a76团队力量加成"]
execute if score @s[tag=!bw.attack,team=bw.green] bw.tmp.dm matches 8.. run tag @a[team=bw.green] add bw.attack

execute if score @s[tag=!bw.attack,team=bw.red] bw.tmp.dm matches 8.. run tellraw @a[team=bw.red] [{"selector":"@s"},"\u00a7a购买了\u00a76团队力量加成"]
execute if score @s[tag=!bw.attack,team=bw.red] bw.tmp.dm matches 8.. run tag @a[team=bw.red] add bw.attack

execute if score @s[tag=!bw.attack,team=bw.blue] bw.tmp.dm matches 8.. run tellraw @a[team=bw.blue] [{"selector":"@s"},"\u00a7a购买了\u00a76团队力量加成"]
execute if score @s[tag=!bw.attack,team=bw.blue] bw.tmp.dm matches 8.. run tag @a[team=bw.blue] add bw.attack

execute if score @s[tag=!bw.attack,team=bw.yellow] bw.tmp.dm matches 8.. run tellraw @a[team=bw.yellow] [{"selector":"@s"},"\u00a7a购买了\u00a76团队力量加成"]
execute if score @s[tag=!bw.attack,team=bw.yellow] bw.tmp.dm matches 8.. run tag @a[team=bw.yellow] add bw.attack
