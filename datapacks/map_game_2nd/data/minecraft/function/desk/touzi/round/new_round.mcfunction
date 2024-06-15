##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @a[team=deskgame,gamemode=!creative]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{desk_item:1}}}}]
scoreboard players set touzi.a.attack board 0
scoreboard players set touzi.a.defend board 0
scoreboard players set touzi.b.attack board 0
scoreboard players set touzi.b.defend board 0
scoreboard players set @a[team=deskgame,gamemode=adventure] touzi.count 4
scoreboard players set desk.state state 2
tellraw @a[team=deskgame] ["\u00a7a新的一轮开始了。"]
title @a[team=deskgame] subtitle ["\u00a7a新的一轮开始了。"]
title @a[team=deskgame] title ["\u00a76下一轮"]
schedule function minecraft:desk/touzi/round/atrun 1s
scoreboard players set desk.time board -1

# 骰子1和骰子2状态
scoreboard players set touzit.a.touzi1 tick 1
scoreboard players set touzit.a.touzi2 tick 1
scoreboard players set touzit.a.number tick 3

scoreboard players set touzit.b.touzi1 tick 1
scoreboard players set touzit.b.touzi2 tick 1
scoreboard players set touzit.b.number tick 3

