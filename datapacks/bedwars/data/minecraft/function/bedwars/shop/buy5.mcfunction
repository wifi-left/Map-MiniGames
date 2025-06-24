##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

tag @s add bw.buy.canbuy
execute as @s[team=bw.green] if score bw.sharpness.green board matches 1.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.red] if score bw.sharpness.red board matches 1.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.blue] if score bw.sharpness.blue board matches 1.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.yellow] if score bw.sharpness.yellow board matches 1.. run tag @s remove bw.buy.canbuy

tellraw @s[tag=!bw.buy.canbuy] ["§c你已经购买过这个东西了！"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.canbuy] ~ ~ ~ 1 0 1
execute as @s[tag=!bw.buy.canbuy] run return 0


execute as @s[tag=bw.buy.canbuy] if score @s bw.tmp.dm matches 8.. run tag @s add bw.buy.success
execute as @s[tag=bw.buy.success] run clear @s diamond 8

execute as @s[tag=bw.buy.success,team=bw.green] run tellraw @a[team=bw.green] [{"selector":"@s"},"§a购买了§6团队锋利 I (新购买物品生效)"]
execute as @s[tag=bw.buy.success,team=bw.green] run scoreboard players add bw.sharpness.green board 1

execute as @s[tag=bw.buy.success,team=bw.yellow] run tellraw @a[team=bw.yellow] [{"selector":"@s"},"§a购买了§6团队锋利 I (新购买物品生效)"]
execute as @s[tag=bw.buy.success,team=bw.yellow] run scoreboard players add bw.sharpness.yellow board 1

execute as @s[tag=bw.buy.success,team=bw.red] run tellraw @a[team=bw.red] [{"selector":"@s"},"§a购买了§6团队锋利 I (新购买物品生效)"]
execute as @s[tag=bw.buy.success,team=bw.red] run scoreboard players add bw.sharpness.red board 1

execute as @s[tag=bw.buy.success,team=bw.blue] run tellraw @a[team=bw.blue] [{"selector":"@s"},"§a购买了§6团队锋利 I (新购买物品生效)"]
execute as @s[tag=bw.buy.success,team=bw.blue] run scoreboard players add bw.sharpness.blue board 1

tellraw @s[tag=!bw.buy.success] ["§c你的资源不够买这个东西！"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.success] ~ ~ ~ 1 0 1

tag @s remove bw.buy.success
tag @s remove bw.buy.canbuy
