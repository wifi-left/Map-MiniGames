##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# title @s actionbar ["\u00a7aForward"]
execute unless score @s car.speed matches 100.. run scoreboard players add @s car.speed 5

