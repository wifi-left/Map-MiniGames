scoreboard players set tnt.state state 1
function tntwars/resetsmap
clear @a[team=wait.tntwars,gamemode=adventure]
effect clear @a[team=wait.tntwars,gamemode=adventure]
tag @a remove tntwars.a
tellraw @a ["\u00a7cTNT Wars \u00a7a游戏开始。"]
tag @a remove tntwars.b
scoreboard players set rand board 1
tag @a[team=wait.tntwars,gamemode=adventure] add tnt.tanteam
execute as @a[tag=tnt.tanteam] run function tntwars/randomteam
team join play.tntwars @a[team=wait.tntwars,gamemode=adventure]
tellraw @a[team=play.tntwars] ["\n\u00a7a「队伍A」",{"selector":"@a[tag=tntwars.a]"},"\n\u00a7b「队伍B」",{"selector":"@a[tag=tntwars.b]"},"\n"]

execute if score tntwars.map state matches ..0 run function tntwars/startmaps/boat1
execute if score tntwars.map state matches 1 run function tntwars/startmaps/ballon1
# execute if score tntwars.map state matches 2.. run data merge block 496 21 240 {Text3:'"\\u00a7cError"'}


title @a[team=play.tntwars,tag=tntwars.b] title ["\u00a7cTNT Wars"]
title @a[team=play.tntwars,tag=tntwars.b] subtitle ["\u00a7f游戏开始"]
title @a[team=play.tntwars,tag=tntwars.a] title ["\u00a7cTNT Wars"]
title @a[team=play.tntwars,tag=tntwars.a] subtitle ["\u00a7f游戏开始"]
kill @e[type=tnt_minecart,tag=tntwars.tnt]

scoreboard players set tnt.tntrain board 0
scoreboard players set tnt.creeperrain board 0
scoreboard players set tnt.fireballrain board 0