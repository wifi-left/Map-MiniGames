scoreboard players set desk.state state 1
scoreboard players set desk.time board -1

execute if score desk.type board matches 1 run function minecraft:desk/touzi/start
