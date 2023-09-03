scoreboard players set start.player tick 0 
effect clear @a[team=hide.wait]
execute as @a[team=hide.wait,gamemode=adventure] run scoreboard players add start.player tick 1
scoreboard players operation hide.maxtime2 board = start.player tick
scoreboard players set 30 board 30
scoreboard players set 60 board 60
scoreboard players set 90 board 90
scoreboard players set 120 board 120
# scoreboard players operation hide.maxtime board *= 60 board
scoreboard players set hide.maxtime board 0
scoreboard players add hide.maxtime board 120
scoreboard players operation hide.maxtime2 board *= 60 board
scoreboard players operation hide.maxtime board += hide.maxtime2 board

execute if score hide.maxtime board matches 1200.. run scoreboard players set hide.maxtime board 600
scoreboard players operation hide.resttime board = hide.maxtime board
scoreboard players set hide.huntgo board 30
function hideseek/starting/reset
function hideseek/starting/ranteam

scoreboard players reset * die

tellraw @a[team=hide.play.ani] ["\n\u00a7c   猎人将在30秒后出动。\n"]
tellraw @a[team=hide.play.hun] ["\n\u00a7c   你将在30秒后出动。\n"]
scoreboard players set hide.state state 2
gamemode spectator @a[tag=GOABLE.SPEC]
team join hide.wait @a[tag=GOABLE.SPEC]
