effect give @a[team=chair] resistance 2 25 true

scoreboard players set chair.player tick 0
execute as @a[team=chair,gamemode=adventure] run scoreboard players add chair.player tick 1

execute if score chair.state state matches 1..99 if score chair.player tick matches ..1 run function minecraft:chair/over

execute if score chair.state state matches 1..99 if score chair.time board matches 1.. run scoreboard players remove chair.time board 1

execute if score chair.state state matches 1..99 if score chair.time board matches 0 run function minecraft:chair/timeout
execute if score chair.state state matches 1 if score chair.time board matches 1.. run title @a[team=chair] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"chair.time"},color:gold},"\u00a76s"]
execute if score chair.state state matches 3 if score chair.time board matches 1.. run title @a[team=chair] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"chair.time"},color:gold},"\u00a76s"]
execute if score chair.state state matches 2 if score chair.time board matches 1.. as @a[team=chair] run playsound block.note_block.bell block @s ~ ~ ~ 1 0 1
execute if score chair.state state matches 2 if score chair.time board matches 1.. as @a[team=chair] run title @a[team=chair] actionbar ["§a§ksss§b 板凳正在准备 §a§ksss"]