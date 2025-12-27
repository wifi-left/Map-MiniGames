# effect give @a[team=live.killer] resistance 2 25 true

scoreboard players set live.player tick 0
execute as @a[team=live,tag=!GLOBAL.SPEC] run scoreboard players add live.player tick 1
execute as @a[team=live.killer,tag=!GLOBAL.SPEC] run scoreboard players add live.player tick 1
execute if score live.state state matches 1..99 if score live.player tick matches ..1 run function minecraft:live/over

execute if score live.state state matches 1 unless entity @a[gamemode=adventure,team=live] run function minecraft:live/round_over
execute if score live.state state matches 1..99 if score live.time board matches 1.. run scoreboard players remove live.time board 1
execute if score live.state state matches 1..99 if score live.time board matches 0 run function minecraft:live/timeout
execute if score live.state state matches 1..99 if score live.time board matches 1.. run title @a[team=live] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"live.time"},color:gold},"\u00a76s"]
execute if score live.state state matches 1..99 if score live.time board matches 1.. run title @a[team=live.killer] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"live.time"},color:gold},"\u00a76s"]

spawnpoint @a[team=live] 189 -63 262 0 0
spawnpoint @a[team=live.killer] 189 -63 262 0 0

execute as @a[team=live] at @s run function minecraft:live/items/runner
execute as @a[team=live.killer] at @s run function minecraft:live/items/killer