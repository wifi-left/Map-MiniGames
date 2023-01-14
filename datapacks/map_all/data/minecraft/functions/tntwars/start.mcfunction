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
tp @a[team=play.tntwars,tag=tntwars.a] 502 -37 342 180 0
tp @a[team=play.tntwars,tag=tntwars.b] 502 -37 289 0 0
title @a[team=play.tntwars,tag=tntwars.b] title ["\u00a7cTNT Wars"]
title @a[team=play.tntwars,tag=tntwars.b] subtitle ["\u00a7f游戏开始"]
title @a[team=play.tntwars,tag=tntwars.a] title ["\u00a7cTNT Wars"]
title @a[team=play.tntwars,tag=tntwars.a] subtitle ["\u00a7f游戏开始"]
kill @e[type=tnt_minecart,tag=tntwars.tnt]