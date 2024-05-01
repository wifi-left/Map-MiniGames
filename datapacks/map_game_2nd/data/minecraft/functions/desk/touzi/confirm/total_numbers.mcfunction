##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score touzi.tmp.type board matches 4 run scoreboard players operation touzi.tmp.attack board = touzi.tmp.number board
execute if score touzi.tmp.type board matches 5 run scoreboard players operation touzi.tmp.defend board = touzi.tmp.number board
