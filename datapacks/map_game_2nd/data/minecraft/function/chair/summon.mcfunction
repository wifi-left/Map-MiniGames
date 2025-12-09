scoreboard players set chair.state state 1
execute as @a[team=chair] at @s run playsound block.note_block.bell block @s ~ ~ ~ 1 1 1

kill @e[type=minecart,tag=chair.chair]

tellraw @a[team=chair] [{text:"\n板凳已经出现，请尽快抢夺！\n",color:yellow}]
title @a[team=chair] title ["\u00a7a板凳已出现"]
title @a[team=chair] subtitle ["\u00a7e请尽快抢夺！"]

function minecraft:chair/calc_chair_count


function minecraft:chair/car_summon
scoreboard players set chair.time board 9