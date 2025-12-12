effect give @a[team=build_parkour] resistance 2 25 true

scoreboard players set build_parkour.player tick 0
execute as @a[team=build_parkour,tag=!GLOBAL.SPEC] run scoreboard players add build_parkour.player tick 1
execute if score build_parkour.state state matches 1..99 if score build_parkour.player tick matches ..1 run function minecraft:build_parkour/over

# Players Parkouring
execute if score build_parkour.state state matches 3..5 unless entity @a[gamemode=adventure,team=build_parkour] run function minecraft:build_parkour/round_over

execute if score build_parkour.state state matches 5 run effect give @a[team=build_parkour] invisibility 2 25 true


execute if score build_parkour.state state matches 1..99 if score build_parkour.time board matches 1.. run scoreboard players remove build_parkour.time board 1
execute if score build_parkour.state state matches 1..99 if score build_parkour.time board matches 0 run function minecraft:build_parkour/timeout
execute if score build_parkour.state state matches 1..99 if score build_parkour.time board matches 1.. run title @a[team=build_parkour] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"build_parkour.time"},color:gold},"\u00a76s"]

execute in parkourworld positioned -29 -55 318 run kill @e[type=item,distance=..30]

