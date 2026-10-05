##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 团队锋利：I 8 钻 / II 20 钻 / III 30 钻 / IV 40 钻（升级后对之后发放的剑生效，含免费木剑）
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0

tag @s add bw.buy.canbuy
execute as @s[team=bw.green] if score bw.sharpness.green board matches 4.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.red] if score bw.sharpness.red board matches 4.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.blue] if score bw.sharpness.blue board matches 4.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.yellow] if score bw.sharpness.yellow board matches 4.. run tag @s remove bw.buy.canbuy

tellraw @s[tag=!bw.buy.canbuy] ["§c你已经把它升到满级了！"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.canbuy] ~ ~ ~ 1 0 1
execute as @s[tag=!bw.buy.canbuy] run return 0

scoreboard players set bw.buy.sharpness.need board 8
execute as @s[team=bw.green] if score bw.sharpness.green board matches 0 run scoreboard players set bw.buy.sharpness.need board 8
execute as @s[team=bw.green] if score bw.sharpness.green board matches 1 run scoreboard players set bw.buy.sharpness.need board 20
execute as @s[team=bw.green] if score bw.sharpness.green board matches 2 run scoreboard players set bw.buy.sharpness.need board 30
execute as @s[team=bw.green] if score bw.sharpness.green board matches 3 run scoreboard players set bw.buy.sharpness.need board 40

execute as @s[team=bw.red] if score bw.sharpness.red board matches 0 run scoreboard players set bw.buy.sharpness.need board 8
execute as @s[team=bw.red] if score bw.sharpness.red board matches 1 run scoreboard players set bw.buy.sharpness.need board 20
execute as @s[team=bw.red] if score bw.sharpness.red board matches 2 run scoreboard players set bw.buy.sharpness.need board 30
execute as @s[team=bw.red] if score bw.sharpness.red board matches 3 run scoreboard players set bw.buy.sharpness.need board 40

execute as @s[team=bw.yellow] if score bw.sharpness.yellow board matches 0 run scoreboard players set bw.buy.sharpness.need board 8
execute as @s[team=bw.yellow] if score bw.sharpness.yellow board matches 1 run scoreboard players set bw.buy.sharpness.need board 20
execute as @s[team=bw.yellow] if score bw.sharpness.yellow board matches 2 run scoreboard players set bw.buy.sharpness.need board 30
execute as @s[team=bw.yellow] if score bw.sharpness.yellow board matches 3 run scoreboard players set bw.buy.sharpness.need board 40

execute as @s[team=bw.blue] if score bw.sharpness.blue board matches 0 run scoreboard players set bw.buy.sharpness.need board 8
execute as @s[team=bw.blue] if score bw.sharpness.blue board matches 1 run scoreboard players set bw.buy.sharpness.need board 20
execute as @s[team=bw.blue] if score bw.sharpness.blue board matches 2 run scoreboard players set bw.buy.sharpness.need board 30
execute as @s[team=bw.blue] if score bw.sharpness.blue board matches 3 run scoreboard players set bw.buy.sharpness.need board 40

execute if score @s bw.tmp.dm >= bw.buy.sharpness.need board run tag @s add bw.buy.success
execute as @s[tag=bw.buy.success] if score bw.buy.sharpness.need board matches 8 run clear @s diamond 8
execute as @s[tag=bw.buy.success] if score bw.buy.sharpness.need board matches 20 run clear @s diamond 20
execute as @s[tag=bw.buy.success] if score bw.buy.sharpness.need board matches 30 run clear @s diamond 30
execute as @s[tag=bw.buy.success] if score bw.buy.sharpness.need board matches 40 run clear @s diamond 40

execute as @s[tag=bw.buy.success,team=bw.green] run scoreboard players add bw.sharpness.green board 1
execute as @s[tag=bw.buy.success,team=bw.green] run tellraw @a[team=bw.green] [{"selector":"@s"},"§a购买了§6团队锋利 ",{"score":{"objective":"board","name":"bw.sharpness.green"},"color":"gold"},"§a（对之后发放的剑生效）"]
execute as @s[tag=bw.buy.success,team=bw.green] as @a[team=bw.green] run function minecraft:bedwars/during/player/sharp_sword_item

execute as @s[tag=bw.buy.success,team=bw.red] run scoreboard players add bw.sharpness.red board 1
execute as @s[tag=bw.buy.success,team=bw.red] run tellraw @a[team=bw.red] [{"selector":"@s"},"§a购买了§6团队锋利 ",{"score":{"objective":"board","name":"bw.sharpness.red"},"color":"gold"},"§a（对之后发放的剑生效）"]
execute as @s[tag=bw.buy.success,team=bw.red] as @a[team=bw.red] run function minecraft:bedwars/during/player/sharp_sword_item

execute as @s[tag=bw.buy.success,team=bw.yellow] run scoreboard players add bw.sharpness.yellow board 1
execute as @s[tag=bw.buy.success,team=bw.yellow] run tellraw @a[team=bw.yellow] [{"selector":"@s"},"§a购买了§6团队锋利 ",{"score":{"objective":"board","name":"bw.sharpness.yellow"},"color":"gold"},"§a（对之后发放的剑生效）"]
execute as @s[tag=bw.buy.success,team=bw.yellow] as @a[team=bw.yellow] run function minecraft:bedwars/during/player/sharp_sword_item

execute as @s[tag=bw.buy.success,team=bw.blue] run scoreboard players add bw.sharpness.blue board 1
execute as @s[tag=bw.buy.success,team=bw.blue] run tellraw @a[team=bw.blue] [{"selector":"@s"},"§a购买了§6团队锋利 ",{"score":{"objective":"board","name":"bw.sharpness.blue"},"color":"gold"},"§a（对之后发放的剑生效）"]
execute as @s[tag=bw.buy.success,team=bw.blue] as @a[team=bw.blue] run function minecraft:bedwars/during/player/sharp_sword_item

tellraw @s[tag=!bw.buy.success] ["§c你的资源不够买这个东西！你共需要：",{"score":{"objective":"board","name":"bw.buy.sharpness.need"},"color":"red"},"§c个钻石。"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.success] ~ ~ ~ 1 0 1

tag @s remove bw.buy.success
tag @s remove bw.buy.canbuy
