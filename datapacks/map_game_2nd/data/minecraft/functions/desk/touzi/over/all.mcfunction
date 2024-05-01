##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{desk_item:1}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{desk_clear:1}}}}]
kill @e[type=armor_stand,tag=desk.touzi.place]
kill @e[type=item_frame,tag=desk.touzi.show]
kill @e[type=text_display,tag=touzi.show.text]
gamemode spectator @a[team=deskgame,gamemode=!creative]
clear @a[team=deskgame,gamemode=!creative]
effect clear @a[team=deskgame,gamemode=!creative]
schedule function minecraft:desk/touzi/over/tp 5s replace
tag @a remove touzi.team.a
tag @a remove touzi.team.b
scoreboard players set desk.state state 10
scoreboard players set desk.time board -1

schedule clear minecraft:desk/touzi/round/atrun
schedule clear minecraft:desk/touzi/round/new_round
