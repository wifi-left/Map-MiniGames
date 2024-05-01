##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score snow.sq board matches ..22 run schedule function minecraft:snow/smaller/remove1 5s
execute if score snow.sq board matches ..22 run function snow/smaller/doit
execute if score snow.sq board matches ..22 run scoreboard players add snow.sq board 1
