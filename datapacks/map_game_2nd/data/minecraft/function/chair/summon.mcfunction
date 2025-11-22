scoreboard players set chair.state state 1
execute as @a[team=chair] at @s run playsound block.note_block.bell block @s ~ ~ ~ 1 1 1

kill @e[type=minecart,tag=chair.chair]

tellraw @a[team=chair] [{text:"\n板凳已经出现，请尽快抢夺！\n",color:yellow}]
title @a[team=chair] title ["\u00a7a板凳已出现"]
title @a[team=chair] subtitle ["\u00a7e请尽快抢夺！"]

scoreboard players set chair.player tick 0
execute as @a[team=chair,gamemode=adventure] run scoreboard players add chair.player tick 1
scoreboard players set chair.count board 1
scoreboard players operation chair.count board = chair.player tick
scoreboard players set 2 board 2
execute if score chair.player tick matches 7.. run scoreboard players operation chair.count board /= 2 board
execute if score chair.player tick matches 4..6 run scoreboard players set chair.count board 3
execute if score chair.player tick matches 3 run scoreboard players set chair.count board 2
execute if score chair.player tick matches 0..2 run scoreboard players set chair.count board 1

function minecraft:chair/car_summon
scoreboard players set chair.time board 15