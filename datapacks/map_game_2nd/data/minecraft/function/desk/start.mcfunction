##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

#
scoreboard players set desk.state state 1
scoreboard players set desk.time board -1

scoreboard objectives setdisplay sidebar.team.dark_purple

execute if score desk.type board matches 1 run function minecraft:desk/touzi/start
execute if score desk.type board matches 2 run function minecraft:merchant/start

