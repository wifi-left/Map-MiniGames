##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

tag @s add bw.buy.canbuy
execute as @s[team=bw.green] if score bw.haste.green board matches 2.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.red] if score bw.haste.red board matches 2.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.blue] if score bw.haste.blue board matches 2.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.yellow] if score bw.haste.yellow board matches 2.. run tag @s remove bw.buy.canbuy

tellraw @s[tag=!bw.buy.canbuy] ["§c你已经把它升到满级了！"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.canbuy] ~ ~ ~ 1 0 1
execute as @s[tag=!bw.buy.canbuy] run return 0

scoreboard players set bw.buy.haste.need board 4
execute as @s[team=bw.green] if score bw.haste.green board matches 0 run scoreboard players set bw.buy.haste.need board 4
execute as @s[team=bw.green] if score bw.haste.green board matches 1 run scoreboard players set bw.buy.haste.need board 6

execute as @s[team=bw.red] if score bw.haste.red board matches 0 run scoreboard players set bw.buy.haste.need board 4
execute as @s[team=bw.red] if score bw.haste.red board matches 1 run scoreboard players set bw.buy.haste.need board 6

execute as @s[team=bw.yellow] if score bw.haste.yellow board matches 0 run scoreboard players set bw.buy.haste.need board 4
execute as @s[team=bw.yellow] if score bw.haste.yellow board matches 1 run scoreboard players set bw.buy.haste.need board 6

execute as @s[team=bw.blue] if score bw.haste.blue board matches 0 run scoreboard players set bw.buy.haste.need board 4
execute as @s[team=bw.blue] if score bw.haste.blue board matches 1 run scoreboard players set bw.buy.haste.need board 6

execute if score @s bw.tmp.dm >= bw.buy.haste.need board run tag @s add bw.buy.success
execute as @s[tag=bw.buy.success] if score bw.buy.haste.need board matches 4 run clear @s diamond 4
execute as @s[tag=bw.buy.success] if score bw.buy.haste.need board matches 6 run clear @s diamond 6


execute as @s[tag=bw.buy.success,team=bw.green] run scoreboard players add bw.haste.green board 1
execute as @s[tag=bw.buy.success,team=bw.green] run tellraw @a[team=bw.green] [{"selector":"@s"},"§a购买了§6团队急迫 ",{"score":{"objective":"board","name":"bw.haste.green"},"color":"gold"}]

execute as @s[tag=bw.buy.success,team=bw.yellow] run scoreboard players add bw.haste.yellow board 1
execute as @s[tag=bw.buy.success,team=bw.yellow] run tellraw @a[team=bw.yellow] [{"selector":"@s"},"§a购买了§6团队急迫 ",{"score":{"objective":"board","name":"bw.haste.yellow"},"color":"gold"}]

execute as @s[tag=bw.buy.success,team=bw.red] run scoreboard players add bw.haste.red board 1
execute as @s[tag=bw.buy.success,team=bw.red] run tellraw @a[team=bw.red] [{"selector":"@s"},"§a购买了§6团队急迫 ",{"score":{"objective":"board","name":"bw.haste.red"},"color":"gold"}]

execute as @s[tag=bw.buy.success,team=bw.blue] run scoreboard players add bw.haste.blue board 1
execute as @s[tag=bw.buy.success,team=bw.blue] run tellraw @a[team=bw.blue] [{"selector":"@s"},"§a购买了§6团队急迫 ",{"score":{"objective":"board","name":"bw.haste.blue"},"color":"gold"}]

tellraw @s[tag=!bw.buy.success] ["§c你的资源不够买这个东西！你共需要：",{"score":{"objective":"board","name":"bw.buy.haste.need"},"color":"red"},"§c个钻石。"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.success] ~ ~ ~ 1 0 1


tag @s remove bw.buy.success
tag @s remove bw.buy.canbuy
