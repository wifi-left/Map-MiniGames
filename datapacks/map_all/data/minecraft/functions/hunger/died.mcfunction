##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score hunger.state state matches ..0 run function hunger/join
execute if score hunger.state state matches 1.. run function hunger/out
