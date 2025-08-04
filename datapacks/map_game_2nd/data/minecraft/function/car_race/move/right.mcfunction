##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# # title @s actionbar ["\u00a7aRight"]
# execute on vehicle store result score car.tmp tick run data get entity @s Rotation[0] 10
# scoreboard players remove car.tmp tick 15
# execute on vehicle store result entity @s Rotation[0] float 0.1 run scoreboard players get car.tmp tick
