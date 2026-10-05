##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 锻造炉（团队升级）：I 铁升级 4 钻 / II 金升级 8 钻 / III 绿宝石升级I 12 钻 / IV 绿宝石升级II 16 钻
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0

tag @s add bw.buy.canbuy
execute as @s[team=bw.green] if score bw.forge.green board matches 4.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.red] if score bw.forge.red board matches 4.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.blue] if score bw.forge.blue board matches 4.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.yellow] if score bw.forge.yellow board matches 4.. run tag @s remove bw.buy.canbuy

tellraw @s[tag=!bw.buy.canbuy] ["§c你已经把它升到满级了！"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.canbuy] ~ ~ ~ 1 0 1
execute as @s[tag=!bw.buy.canbuy] run return 0

scoreboard players set bw.buy.forge.need board 4
execute as @s[team=bw.green] if score bw.forge.green board matches 0 run scoreboard players set bw.buy.forge.need board 4
execute as @s[team=bw.green] if score bw.forge.green board matches 1 run scoreboard players set bw.buy.forge.need board 8
execute as @s[team=bw.green] if score bw.forge.green board matches 2 run scoreboard players set bw.buy.forge.need board 12
execute as @s[team=bw.green] if score bw.forge.green board matches 3 run scoreboard players set bw.buy.forge.need board 16

execute as @s[team=bw.red] if score bw.forge.red board matches 0 run scoreboard players set bw.buy.forge.need board 4
execute as @s[team=bw.red] if score bw.forge.red board matches 1 run scoreboard players set bw.buy.forge.need board 8
execute as @s[team=bw.red] if score bw.forge.red board matches 2 run scoreboard players set bw.buy.forge.need board 12
execute as @s[team=bw.red] if score bw.forge.red board matches 3 run scoreboard players set bw.buy.forge.need board 16

execute as @s[team=bw.yellow] if score bw.forge.yellow board matches 0 run scoreboard players set bw.buy.forge.need board 4
execute as @s[team=bw.yellow] if score bw.forge.yellow board matches 1 run scoreboard players set bw.buy.forge.need board 8
execute as @s[team=bw.yellow] if score bw.forge.yellow board matches 2 run scoreboard players set bw.buy.forge.need board 12
execute as @s[team=bw.yellow] if score bw.forge.yellow board matches 3 run scoreboard players set bw.buy.forge.need board 16

execute as @s[team=bw.blue] if score bw.forge.blue board matches 0 run scoreboard players set bw.buy.forge.need board 4
execute as @s[team=bw.blue] if score bw.forge.blue board matches 1 run scoreboard players set bw.buy.forge.need board 8
execute as @s[team=bw.blue] if score bw.forge.blue board matches 2 run scoreboard players set bw.buy.forge.need board 12
execute as @s[team=bw.blue] if score bw.forge.blue board matches 3 run scoreboard players set bw.buy.forge.need board 16

execute if score @s bw.tmp.dm >= bw.buy.forge.need board run tag @s add bw.buy.success
execute as @s[tag=bw.buy.success] if score bw.buy.forge.need board matches 4 run clear @s diamond 4
execute as @s[tag=bw.buy.success] if score bw.buy.forge.need board matches 8 run clear @s diamond 8
execute as @s[tag=bw.buy.success] if score bw.buy.forge.need board matches 12 run clear @s diamond 12
execute as @s[tag=bw.buy.success] if score bw.buy.forge.need board matches 16 run clear @s diamond 16

execute as @s[tag=bw.buy.success,team=bw.green] run scoreboard players add bw.forge.green board 1
execute as @s[tag=bw.buy.success,team=bw.green] run tellraw @a[team=bw.green] [{"selector":"@s"},"§a购买了§6锻造炉 ",{"score":{"objective":"board","name":"bw.forge.green"},"color":"gold"}]

execute as @s[tag=bw.buy.success,team=bw.red] run scoreboard players add bw.forge.red board 1
execute as @s[tag=bw.buy.success,team=bw.red] run tellraw @a[team=bw.red] [{"selector":"@s"},"§a购买了§6锻造炉 ",{"score":{"objective":"board","name":"bw.forge.red"},"color":"gold"}]

execute as @s[tag=bw.buy.success,team=bw.yellow] run scoreboard players add bw.forge.yellow board 1
execute as @s[tag=bw.buy.success,team=bw.yellow] run tellraw @a[team=bw.yellow] [{"selector":"@s"},"§a购买了§6锻造炉 ",{"score":{"objective":"board","name":"bw.forge.yellow"},"color":"gold"}]

execute as @s[tag=bw.buy.success,team=bw.blue] run scoreboard players add bw.forge.blue board 1
execute as @s[tag=bw.buy.success,team=bw.blue] run tellraw @a[team=bw.blue] [{"selector":"@s"},"§a购买了§6锻造炉 ",{"score":{"objective":"board","name":"bw.forge.blue"},"color":"gold"}]

execute as @s[tag=bw.buy.success] run function minecraft:bedwars/shop/forge/apply_all

tellraw @s[tag=!bw.buy.success] ["§c你的资源不够买这个东西！你共需要：",{"score":{"objective":"board","name":"bw.buy.forge.need"},"color":"red"},"§c个钻石。"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.success] ~ ~ ~ 1 0 1

tag @s remove bw.buy.success
tag @s remove bw.buy.canbuy
