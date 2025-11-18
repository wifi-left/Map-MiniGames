effect give @a[team=pacman] resistance 2 25 true
effect give @a[team=pacman.killer] resistance 2 25 true

scoreboard players set pacman.player tick 0
execute as @a[team=pacman,tag=!GLOBAL.SPEC] run scoreboard players add pacman.player tick 1
execute as @a[team=pacman.killer,tag=!GLOBAL.SPEC] run scoreboard players add pacman.player tick 1
execute if score pacman.state state matches 1..99 if score pacman.player tick matches ..1 run function minecraft:pacman/over

execute if score pacman.state state matches 1 unless entity @a[gamemode=adventure,team=pacman] run function minecraft:pacman/round_over
execute if score pacman.state state matches 1..99 if score pacman.time board matches 1.. run scoreboard players remove pacman.time board 1
execute if score pacman.state state matches 1..99 if score pacman.time board matches 0 run function minecraft:pacman/timeout
execute if score pacman.state state matches 1..99 if score pacman.time board matches 1.. run title @a[team=pacman] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"pacman.time"},color:gold},"\u00a76s"]
execute if score pacman.state state matches 1..99 if score pacman.time board matches 1.. run title @a[team=pacman.killer] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"pacman.time"},color:gold},"\u00a76s"]