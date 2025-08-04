##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score endwolf.time board matches 0 if score endwolf.state state matches 1 run function minecraft:endless_wolf/time/night
execute if score endwolf.time board matches 0 if score endwolf.state state matches 2 run function minecraft:endless_wolf/time/day
