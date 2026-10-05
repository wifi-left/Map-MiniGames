##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 快速重生（团队升级）：I 重生等待 4 秒（2 钻）/ II 重生等待 2 秒（4 钻）
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0

tag @s add bw.buy.canbuy
execute as @s[team=bw.green] if score bw.respawn.green board matches 2.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.red] if score bw.respawn.red board matches 2.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.blue] if score bw.respawn.blue board matches 2.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.yellow] if score bw.respawn.yellow board matches 2.. run tag @s remove bw.buy.canbuy

tellraw @s[tag=!bw.buy.canbuy] ["§c你已经把它升到满级了！"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.canbuy] ~ ~ ~ 1 0 1
execute as @s[tag=!bw.buy.canbuy] run return 0

scoreboard players set bw.buy.respawn.need board 5
execute as @s[team=bw.green] if score bw.respawn.green board matches 0 run scoreboard players set bw.buy.respawn.need board 5
execute as @s[team=bw.green] if score bw.respawn.green board matches 1 run scoreboard players set bw.buy.respawn.need board 10

execute as @s[team=bw.red] if score bw.respawn.red board matches 0 run scoreboard players set bw.buy.respawn.need board 5
execute as @s[team=bw.red] if score bw.respawn.red board matches 1 run scoreboard players set bw.buy.respawn.need board 10

execute as @s[team=bw.blue] if score bw.respawn.blue board matches 0 run scoreboard players set bw.buy.respawn.need board 5
execute as @s[team=bw.blue] if score bw.respawn.blue board matches 1 run scoreboard players set bw.buy.respawn.need board 10

execute as @s[team=bw.yellow] if score bw.respawn.yellow board matches 0 run scoreboard players set bw.buy.respawn.need board 5
execute as @s[team=bw.yellow] if score bw.respawn.yellow board matches 1 run scoreboard players set bw.buy.respawn.need board 10

execute if score @s bw.tmp.dm >= bw.buy.respawn.need board run tag @s add bw.buy.success
execute as @s[tag=bw.buy.success] if score bw.buy.respawn.need board matches 5 run clear @s diamond 5
execute as @s[tag=bw.buy.success] if score bw.buy.respawn.need board matches 10 run clear @s diamond 10

execute as @s[tag=bw.buy.success,team=bw.green] run scoreboard players add bw.respawn.green board 1
execute as @s[tag=bw.buy.success,team=bw.green] run tellraw @a[team=bw.green] [{"selector":"@s"},"§a购买了§6快速重生 ",{"score":{"objective":"board","name":"bw.respawn.green"},"color":"gold"}]

execute as @s[tag=bw.buy.success,team=bw.red] run scoreboard players add bw.respawn.red board 1
execute as @s[tag=bw.buy.success,team=bw.red] run tellraw @a[team=bw.red] [{"selector":"@s"},"§a购买了§6快速重生 ",{"score":{"objective":"board","name":"bw.respawn.red"},"color":"gold"}]

execute as @s[tag=bw.buy.success,team=bw.blue] run scoreboard players add bw.respawn.blue board 1
execute as @s[tag=bw.buy.success,team=bw.blue] run tellraw @a[team=bw.blue] [{"selector":"@s"},"§a购买了§6快速重生 ",{"score":{"objective":"board","name":"bw.respawn.blue"},"color":"gold"}]

execute as @s[tag=bw.buy.success,team=bw.yellow] run scoreboard players add bw.respawn.yellow board 1
execute as @s[tag=bw.buy.success,team=bw.yellow] run tellraw @a[team=bw.yellow] [{"selector":"@s"},"§a购买了§6快速重生 ",{"score":{"objective":"board","name":"bw.respawn.yellow"},"color":"gold"}]

tellraw @s[tag=!bw.buy.success] ["§c你的资源不够买这个东西！你共需要：",{"score":{"objective":"board","name":"bw.buy.respawn.need"},"color":"red"},"§c个钻石。"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.success] ~ ~ ~ 1 0 1

tag @s remove bw.buy.success
tag @s remove bw.buy.canbuy
