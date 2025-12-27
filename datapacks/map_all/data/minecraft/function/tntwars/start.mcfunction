##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tnt.state state 1
function tntwars/resetsmap
clear @a[team=wait.tntwars,gamemode=adventure]
effect clear @a[team=wait.tntwars,gamemode=adventure]
tag @a remove tntwars.a
tellraw @a ["§cTNT Wars §a游戏开始。"]
tag @a remove tntwars.b
scoreboard players set rand board 1
tag @a[team=wait.tntwars,gamemode=adventure] add tnt.tanteam
execute as @a[tag=tnt.tanteam] run function tntwars/randomteam
team join play.tntwars @a[team=wait.tntwars,gamemode=adventure]
tellraw @a[team=play.tntwars] ["\n§a「队伍A」",{"selector":"@a[tag=tntwars.a]"},"\n§b「队伍B」",{"selector":"@a[tag=tntwars.b]"},"\n"]

tellraw @a[tag=tntwars.a] ["§6你加入了 §cTNT Wars §a「队伍A」"]
tellraw @a[tag=tntwars.b] ["§6你加入了 §cTNT Wars §b「队伍B」"]
scoreboard players operation tntwars.map board = tntwars.map state
execute if score tntwars.map state matches ..-1 store result score tntwars.map board run random value 0..3
execute if score tntwars.map board matches 0 run function tntwars/startmaps/boat1
execute if score tntwars.map board matches 1 run function tntwars/startmaps/ballon1
execute if score tntwars.map board matches 2 run function tntwars/startmaps/cloud1
execute if score tntwars.map board matches 3 run function tntwars/startmaps/planet1
# execute if score tntwars.map state matches 2.. run data modify block 496 21 240 front_text.messages[(3-1)] set value "\u00a7cError"}

kill @e[type=tnt_minecart,tag=tntwars.tnt]
title @a[tag=tntwars.a] title ["\u00a76你在 §a「队伍A」\u00a78| \u00a76游戏开始"]
title @a[tag=tntwars.a] subtitle ["你的同侧为你的队友"]
title @a[tag=tntwars.b] title ["\u00a76你在 §b「队伍B」\u00a78| \u00a76游戏开始"]
title @a[tag=tntwars.b] subtitle ["你的同侧为你的队友"]

scoreboard players set tnt.tntrain board 0
scoreboard players set tnt.creeperrain board 0
scoreboard players set tnt.fireballrain board 0

