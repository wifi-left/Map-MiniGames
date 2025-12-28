effect give @a[team=t_says] resistance 2 25 true
effect give @a[team=t_says] night_vision 2 25 true
effect give @a[team=t_says] fire_resistance 2 25 true
effect give @a[team=t_says] water_breathing 2 25 true

scoreboard players set t_says.player tick 0
execute as @a[team=t_says,tag=!GLOBAL.SPEC] run scoreboard players add t_says.player tick 1
execute if score t_says.state state matches 1..99 if score t_says.player tick matches ..0 run function minecraft:t_says/over

execute if score t_says.state state matches 1 unless entity @a[gamemode=adventure,team=t_says,tag=!t_says.finished,tag=!t_says.failed] run function minecraft:t_says/round_over
execute if score t_says.state state matches 1..99 if score t_says.time board matches 1.. run scoreboard players remove t_says.time board 1
execute if score t_says.state state matches 1..99 if score t_says.time board matches 0 run function minecraft:t_says/timeout
execute if score t_says.state state matches 1..2 if score t_says.time board matches 1.. run title @a[team=t_says] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"t_says.time"},color:gold},"\u00a76s"]
execute if score t_says.state state matches 1 if score t_says.time board matches 3 run title @a[team=t_says,tag=!t_says.finished,tag=!t_says.failed] title ["\u00a7c快一点"]
execute if score t_says.state state matches 1 if score t_says.time board matches 3 as @a[team=t_says,tag=!t_says.finished,tag=!t_says.failed] at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 2 1
execute if score t_says.state state matches 4..99 if score t_says.time board matches 1.. run title @a[team=t_says] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"t_says.time"},color:gold},"\u00a76s"]
