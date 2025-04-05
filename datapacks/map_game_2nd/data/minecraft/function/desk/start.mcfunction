
#
scoreboard players set desk.state state 1
scoreboard players set desk.time board -1

scoreboard objectives setdisplay sidebar.team.dark_purple

execute if score desk.type board matches 1 run function minecraft:desk/touzi/start
execute if score desk.type board matches 2 run function minecraft:merchant/start

