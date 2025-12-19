effect give @a[team=build_guess] resistance 2 25 true

scoreboard players set build_guess.player tick 0
execute as @a[team=build_guess,tag=!GLOBAL.SPEC] run scoreboard players add build_guess.player tick 1
execute if score build_guess.state state matches 1..99 if score build_guess.player tick matches ..1 run function minecraft:build_guess/over

# Players Parkouring
execute if score build_guess.state state matches 3..5 unless entity @a[gamemode=adventure,team=build_guess] run function minecraft:build_guess/round_over
execute if score build_guess.state state matches 3..5 unless entity @a[gamemode=adventure,team=build_guess,tag=build_guess.guesser] run function minecraft:build_guess/round_over
execute if score build_guess.state state matches 3..5 unless entity @a[gamemode=adventure,team=build_guess,tag=build_guess.builder] run function minecraft:build_guess/round_over
execute if score build_guess.state state matches 3..5 if score build_guess.time board matches 60 run function minecraft:build_guess/during/give_tip

execute if score build_guess.state state matches 5 run effect give @a[team=build_guess] invisibility 2 25 true


execute if score build_guess.state state matches 1..99 if score build_guess.time board matches 1.. run scoreboard players remove build_guess.time board 1
execute if score build_guess.state state matches 1..99 if score build_guess.time board matches 0 run function minecraft:build_guess/timeout

execute if score build_guess.state state matches 1..2 if score build_guess.time board matches 1.. run title @a[team=build_guess,tag=build_guess.guesser] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"build_guess.time"},color:gold},"\u00a76s"]

execute if score build_guess.state state matches 3..5 if score build_guess.time board matches 1.. run title @a[team=build_guess,tag=build_guess.guesser,gamemode=adventure] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"build_guess.time"},color:gold},"\u00a76s\u00a78 | \u00a7b提示：",{nbt:"build_guess.tip",storage:"minecraft:temp",color:yellow}]
execute if score build_guess.state state matches 3..5 if score build_guess.time board matches 1.. run title @a[team=build_guess,tag=build_guess.builder,gamemode=adventure] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"build_guess.time"},color:gold},"\u00a76s\u00a78 | \u00a7b当前词汇：",{nbt:"build_guess.word",storage:"minecraft:temp",color:yellow}]
execute if score build_guess.state state matches 3..5 if score build_guess.time board matches 1.. run title @a[team=build_guess,gamemode=spectator] actionbar ["\u00a7b倒计时：",{score:{objective:board,name:"build_guess.time"},color:gold},"\u00a76s\u00a78 | \u00a7b当前词汇：",{nbt:"build_guess.word",storage:"minecraft:temp",color:yellow}]

execute in parkourworld positioned -129 -55 318 run kill @e[type=item,distance=..30]
