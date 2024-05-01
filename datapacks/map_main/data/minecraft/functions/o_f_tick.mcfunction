##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=play.zombie,gamemode=adventure] run function zombieever/guninfo
execute if score color.state state matches 1.. run function minecraft:color/half_second
execute if score desk.state state matches 1.. run function minecraft:desk/hftick

