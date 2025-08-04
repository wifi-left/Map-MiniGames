##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# title @s actionbar ["\u00a7cBackward"]
# scoreboard players set @s car.speed 0
execute if score @s car.speed matches 1.. run scoreboard players remove @s car.speed 5
execute if score @s car.speed matches ..0 run scoreboard players set @s car.speed 0

