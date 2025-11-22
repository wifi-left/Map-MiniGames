execute store result score chair.time board run random value 1..10
scoreboard players set chair.state state 2
kill @e[type=minecart,tag=chair.chair]
tellraw @a[team=chair] ["\n\u00a7a新的一轮开始了！"]


scoreboard players set chair.player tick 0
execute as @a[team=chair,gamemode=adventure] run scoreboard players add chair.player tick 1
scoreboard players set chair.count board 1
scoreboard players operation chair.count board = chair.player tick
scoreboard players set 2 board 2
execute if score chair.player tick matches 7.. run scoreboard players operation chair.count board /= 2 board
execute if score chair.player tick matches 4..6 run scoreboard players set chair.count board 3
execute if score chair.player tick matches 3 run scoreboard players set chair.count board 2
execute if score chair.player tick matches 0..2 run scoreboard players set chair.count board 1

tellraw @a[team=chair] ["\u00a7d本轮椅子数量：",{score:{name:"chair.count",objective:board},color:aqua},"\n"]