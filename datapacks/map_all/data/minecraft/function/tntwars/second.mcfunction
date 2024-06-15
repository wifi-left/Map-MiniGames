##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
effect give @a[team=play.tntwars] resistance 2 25 true
function tntwars/calcpeople
execute as @a[team=play.tntwars,tag=tntwars.a] run title @s actionbar ["\u00a7a「队伍A」\u00a7c你的队友：",{"selector":"@a[tag=tntwars.a,gamemode=adventure]"}]
execute as @a[team=play.tntwars,tag=tntwars.b] run title @s actionbar ["\u00a7b「队伍B」\u00a7c你的队友：",{"selector":"@a[tag=tntwars.b,gamemode=adventure]"}]

execute if score tnt.state state matches 1..2 if score TNT.a.player tick matches ..0 run function tntwars/over/teamb
execute if score tnt.state state matches 1..2 if score TNT.b.player tick matches ..0 run function tntwars/over/teama

execute as @e[tag=tnt.tntrain] at @s run function tntwars/shoottnt/tntrain
execute if entity @e[tag=tnt.tntrain.tnt] run scoreboard players remove tnt.tntrain board 1
execute if entity @e[tag=tnt.tntrain.creeper] run scoreboard players remove tnt.creeperrain board 1
execute if entity @e[tag=tnt.tntrain.fireball] run scoreboard players remove tnt.fireballrain board 1
execute if score tnt.tntrain board matches ..0 run kill @e[tag=tnt.tntrain.tnt]
execute if score tnt.creeperrain board matches ..0 run kill @e[tag=tnt.tntrain.creeper]
execute if score tnt.fireballrain board matches ..0 run kill @e[tag=tnt.tntrain.fireball]
effect give @a[team=play.tntwars] glowing 2 25 true
