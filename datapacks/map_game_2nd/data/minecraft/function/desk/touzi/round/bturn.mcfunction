##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=deskgame] ["§7现在轮到§4队伍B§7操作。"]
clear @a[team=deskgame]
execute as @a[team=deskgame,tag=touzi.team.b] at @s run function minecraft:desk/touzi/control/refrush
execute as @a[team=deskgame,tag=touzi.team.b] at @s run title @s title ["\u00a76该你操作了"]
execute as @a[team=deskgame,tag=touzi.team.b] at @s run title @s subtitle ["\u00a7f现在是你们队伍的回合"]
scoreboard players set desk.state state 4
scoreboard players set desk.time board 120


