##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players operation hideseek.settings.map board = hideseek.settings.map state
execute if score hideseek.settings.map board matches 0 store result score hideseek.settings.map board run random value 1..3
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
scoreboard players add hide.maxtime board 60
scoreboard players operation hide.maxtime2 board *= hide2.timeperplayer board
scoreboard players operation hide.maxtime board += hide.maxtime2 board
scoreboard players add hide.maxtime board 30

execute if score hide.maxtime board matches ..120 run scoreboard players set hide.maxtime board 120
execute if score hide.maxtime board matches 600.. run scoreboard players set hide.maxtime board 600
scoreboard players operation hide.resttime board = hide.maxtime board
scoreboard players set hide.huntgo board 30
function hideseek/starting/reset
function hideseek/starting/ranteam

scoreboard players reset * die

tellraw @a[team=hide.play.ani] ["\n§c   猎人将在30秒后出动。\n"]
tellraw @a[team=hide.play.hun] ["\n§c   你将在30秒后出动。\n"]
scoreboard players set hide.state state 2
gamemode spectator @a[tag=GLOBAL.SPEC]
team join hide.wait @a[tag=GLOBAL.SPEC]


