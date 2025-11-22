execute store result score chair.time board run random value 1..10
scoreboard players set chair.state state 2
kill @e[type=minecart,tag=chair.chair]
tellraw @a[team=chair] ["\n\u00a7a新的一轮开始了！"]


scoreboard players set chair.player tick 0
execute as @a[team=chair,gamemode=adventure] run scoreboard players add chair.player tick 1
function minecraft:chair/calc_chair_count

tellraw @a[team=chair] ["\u00a7d本轮椅子数量：",{score:{name:"chair.count",objective:board},color:aqua},"\n"]