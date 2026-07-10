function minecraft:stronghold/death/find_deathpoint
function minecraft:stronghold/death/find_death_text
execute unless entity @e[tag=stronghold.flagged] run return 0


scoreboard players set 20 board 20
scoreboard players operation stronghold.tmp player.board = @s player.board
scoreboard players operation stronghold.tmp player.board /= 20 board

tag @s add stronghold.e
execute if score stronghold.tmp player.board matches 30.. in overworld run data modify block 0 -1 0 back_text.messages[2] set value [{text:"即将死于",color:gray,bold:false},{color:"green",score:{name:"stronghold.tmp",objective:"player.board"}},{text:"秒后 (按下潜行救援)",color:gray,bold:false}]
execute if score stronghold.tmp player.board matches 10..29 in overworld run data modify block 0 -1 0 back_text.messages[2] set value [{text:"即将死于",color:gray,bold:false},{color:"yellow",score:{name:"stronghold.tmp",objective:"player.board"}},{text:"秒后 (按下潜行救援)",color:gray,bold:false}]
execute if score stronghold.tmp player.board matches ..9 in overworld run data modify block 0 -1 0 back_text.messages[2] set value [{text:"即将死于",color:gray,bold:false},{color:"red",score:{name:"stronghold.tmp",objective:"player.board"}},{text:"秒后 (按下潜行救援)",color:gray,bold:false}]

tag @s remove stronghold.e
# say @e[tag=stronghold.flagged,limit=1]
execute as @e[tag=stronghold.flagged2,limit=1] in overworld run data modify entity @s text set from block 0 -1 0 back_text.messages[2]


# title @s title ["\u00a76你晕倒了"]
spectate @e[tag=stronghold.flagged,limit=1] @s
title @s actionbar ["正在等待救援... 剩余",{color:"yellow",score:{name:"stronghold.tmp",objective:"player.board"}},"\u00a7f秒"]
tag @e[tag=stronghold.flagged] remove stronghold.flagged
tag @e[tag=stronghold.flagged2] remove stronghold.flagged2
# say @e[tag=stronghold.flagged,limit=1]
effect give @s instant_health 1 25 true
