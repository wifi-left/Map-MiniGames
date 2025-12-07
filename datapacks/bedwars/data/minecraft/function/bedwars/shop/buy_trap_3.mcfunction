execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0

tag @s add bw.buy.canbuy
execute as @s[team=bw.green] if score bw.green.trap.3 board matches 1.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.red] if score bw.red.trap.3 board matches 1.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.blue] if score bw.blue.trap.3 board matches 1.. run tag @s remove bw.buy.canbuy
execute as @s[team=bw.yellow] if score bw.yellow.trap.3 board matches 1.. run tag @s remove bw.buy.canbuy

function minecraft:bedwars/message/show_trap/main
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.canbuy] ~ ~ ~ 1 0 1
execute as @s[tag=!bw.buy.canbuy] run return run tellraw @s ["§c你的队伍陷阱池已经满了！无法购买更多陷阱！"]

scoreboard players set bw.buy.armor.need board 1
execute as @s[team=bw.green] if score bw.green.trap.1 board matches 0.. run scoreboard players set bw.buy.armor.need board 2
execute as @s[team=bw.green] if score bw.green.trap.2 board matches 0.. run scoreboard players set bw.buy.armor.need board 4
execute as @s[team=bw.red] if score bw.red.trap.1 board matches 0.. run scoreboard players set bw.buy.armor.need board 2
execute as @s[team=bw.red] if score bw.red.trap.2 board matches 0.. run scoreboard players set bw.buy.armor.need board 4
execute as @s[team=bw.yellow] if score bw.yellow.trap.1 board matches 0.. run scoreboard players set bw.buy.armor.need board 2
execute as @s[team=bw.yellow] if score bw.yellow.trap.2 board matches 0.. run scoreboard players set bw.buy.armor.need board 4
execute as @s[team=bw.blue] if score bw.blue.trap.1 board matches 0.. run scoreboard players set bw.buy.armor.need board 2
execute as @s[team=bw.blue] if score bw.blue.trap.2 board matches 0.. run scoreboard players set bw.buy.armor.need board 4

execute if score @s bw.tmp.dm >= bw.buy.armor.need board run tag @s add bw.buy.success
execute as @s[tag=bw.buy.success] if score bw.buy.armor.need board matches 1 run clear @s diamond 1
execute as @s[tag=bw.buy.success] if score bw.buy.armor.need board matches 2 run clear @s diamond 2
execute as @s[tag=bw.buy.success] if score bw.buy.armor.need board matches 4 run clear @s diamond 4

scoreboard players set bw.trap.tobeadded bw.board 3
execute as @s[tag=bw.buy.success,team=bw.green] run function minecraft:bedwars/during/addtrap/green
execute as @s[tag=bw.buy.success,team=bw.red] run function minecraft:bedwars/during/addtrap/red
execute as @s[tag=bw.buy.success,team=bw.blue] run function minecraft:bedwars/during/addtrap/blue
execute as @s[tag=bw.buy.success,team=bw.yellow] run function minecraft:bedwars/during/addtrap/yellow
scoreboard players set bw.trap.tobeadded bw.board -1

tellraw @s[tag=!bw.buy.success] ["§c你的资源不够买这个东西！你共需要：",{"score":{"objective":"board","name":"bw.buy.armor.need"},"color":"red"},"§c个钻石。"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.success] ~ ~ ~ 1 0 1

tag @s remove bw.buy.success
tag @s remove bw.buy.canbuy
