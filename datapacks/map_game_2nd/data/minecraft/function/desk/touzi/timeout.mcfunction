##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set desk.time board -1

execute if score desk.state state matches 4 run function minecraft:desk/touzi/confirmround/b
execute if score desk.state state matches 3 run function minecraft:desk/touzi/confirmround/a
