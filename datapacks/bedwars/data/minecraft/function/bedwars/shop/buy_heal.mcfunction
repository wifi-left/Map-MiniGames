##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 治疗池（团队升级）：I 基地 12 格内再生 I（1 钻）/ II 半径 16 格再生 II（2 钻）
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0

tag @s add bw.buy.canbuy
execute as @s[team=bw.green] if score bw.heal.green board matches 2.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.red] if score bw.heal.red board matches 2.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.blue] if score bw.heal.blue board matches 2.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.yellow] if score bw.heal.yellow board matches 2.. run tag @s remove bw.buy.canbuy

tellraw @s[tag=!bw.buy.canbuy] ["§c你已经把它升到满级了！"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.canbuy] ~ ~ ~ 1 0 1
execute as @s[tag=!bw.buy.canbuy] run return 0

scoreboard players set bw.buy.heal.need board 1
execute as @s[team=bw.green] if score bw.heal.green board matches 0 run scoreboard players set bw.buy.heal.need board 1
execute as @s[team=bw.green] if score bw.heal.green board matches 1 run scoreboard players set bw.buy.heal.need board 2

execute as @s[team=bw.red] if score bw.heal.red board matches 0 run scoreboard players set bw.buy.heal.need board 1
execute as @s[team=bw.red] if score bw.heal.red board matches 1 run scoreboard players set bw.buy.heal.need board 2

execute as @s[team=bw.blue] if score bw.heal.blue board matches 0 run scoreboard players set bw.buy.heal.need board 1
execute as @s[team=bw.blue] if score bw.heal.blue board matches 1 run scoreboard players set bw.buy.heal.need board 2

execute as @s[team=bw.yellow] if score bw.heal.yellow board matches 0 run scoreboard players set bw.buy.heal.need board 1
execute as @s[team=bw.yellow] if score bw.heal.yellow board matches 1 run scoreboard players set bw.buy.heal.need board 2

execute if score @s bw.tmp.dm >= bw.buy.heal.need board run tag @s add bw.buy.success
execute as @s[tag=bw.buy.success] if score bw.buy.heal.need board matches 1 run clear @s diamond 1
execute as @s[tag=bw.buy.success] if score bw.buy.heal.need board matches 2 run clear @s diamond 2

execute as @s[tag=bw.buy.success,team=bw.green] run scoreboard players add bw.heal.green board 1
execute as @s[tag=bw.buy.success,team=bw.green] run tellraw @a[team=bw.green] [{"selector":"@s"},"§a购买了§6治疗池 ",{"score":{"objective":"board","name":"bw.heal.green"},"color":"gold"}]

execute as @s[tag=bw.buy.success,team=bw.red] run scoreboard players add bw.heal.red board 1
execute as @s[tag=bw.buy.success,team=bw.red] run tellraw @a[team=bw.red] [{"selector":"@s"},"§a购买了§6治疗池 ",{"score":{"objective":"board","name":"bw.heal.red"},"color":"gold"}]

execute as @s[tag=bw.buy.success,team=bw.blue] run scoreboard players add bw.heal.blue board 1
execute as @s[tag=bw.buy.success,team=bw.blue] run tellraw @a[team=bw.blue] [{"selector":"@s"},"§a购买了§6治疗池 ",{"score":{"objective":"board","name":"bw.heal.blue"},"color":"gold"}]

execute as @s[tag=bw.buy.success,team=bw.yellow] run scoreboard players add bw.heal.yellow board 1
execute as @s[tag=bw.buy.success,team=bw.yellow] run tellraw @a[team=bw.yellow] [{"selector":"@s"},"§a购买了§6治疗池 ",{"score":{"objective":"board","name":"bw.heal.yellow"},"color":"gold"}]

tellraw @s[tag=!bw.buy.success] ["§c你的资源不够买这个东西！你共需要：",{"score":{"objective":"board","name":"bw.buy.heal.need"},"color":"red"},"§c个钻石。"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.success] ~ ~ ~ 1 0 1

tag @s remove bw.buy.success
tag @s remove bw.buy.canbuy
