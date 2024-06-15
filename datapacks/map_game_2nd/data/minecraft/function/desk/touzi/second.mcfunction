##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless score desk.time board matches 1.. run title @a[team=deskgame,tag=touzi.team.a] actionbar ["\u00a76你在\u00a79队伍A"]
execute unless score desk.time board matches 1.. run title @a[team=deskgame,tag=touzi.team.b] actionbar ["\u00a76你在\u00a74队伍B"]

execute if score desk.time board matches 1.. run title @a[team=deskgame,tag=touzi.team.a] actionbar ["\u00a76你在\u00a79队伍A\u00a76，操作时间剩余：",{"score":{"objective": "board","name": "desk.time"},"color": "yellow"},"\u00a76s"]
execute if score desk.time board matches 1.. run title @a[team=deskgame,tag=touzi.team.b] actionbar ["\u00a76你在\u00a74队伍B\u00a76，操作时间剩余：",{"score":{"objective": "board","name": "desk.time"},"color": "yellow"},"\u00a76s"]


data merge block -19 4 71 {front_text:{messages:['["\\u00a79队伍A\\u00a78 | \\u00a77金币 ",{"score":{"objective":"board","name":"touzi.money.a"},"color":"yellow"},"\\u00a76℗"]','["\\u00a74队伍B \\u00a78| \\u00a77金币 ",{"score":{"objective":"board","name":"touzi.money.b"},"color":"yellow"},"\\u00a76℗"]','["\\u00a79队伍A \\u00a78| \\u00a77生命 ",{"score":{"objective":"board","name":"touzi.health.a"},"color":"red"},"\\u00a7c♥"]','["\\u00a74队伍B \\u00a78| \\u00a77生命 ",{"score":{"objective":"board","name":"touzi.health.b"},"color":"red"},"\\u00a7c♥"]']}}


execute as @e[tag=touzi.text.money.a,type=marker] at @s as @e[distance=0..2,type=text_display] run data modify entity @s text set from block -19 4 71 front_text.messages[0]

execute as @e[tag=touzi.text.money.b,type=marker] at @s as @e[distance=0..2,type=text_display] run data modify entity @s text set from block -19 4 71 front_text.messages[1]

execute as @e[tag=touzi.text.health.a,type=marker] at @s as @e[distance=0..2,type=text_display] run data modify entity @s text set from block -19 4 71 front_text.messages[2]

execute as @e[tag=touzi.text.health.b,type=marker] at @s as @e[distance=0..2,type=text_display] run data modify entity @s text set from block -19 4 71 front_text.messages[3]

function minecraft:desk/touzi/overdetect

execute if score desk.state state matches 1..9 if score desk.time board matches 0 run function desk/touzi/timeout
execute if score desk.state state matches 1..9 if score desk.time board matches 1.. run scoreboard players remove desk.time board 1

