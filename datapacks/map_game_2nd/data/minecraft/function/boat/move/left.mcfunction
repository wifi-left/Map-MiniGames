# # title @s actionbar ["\u00a7aLeft"]
# execute on vehicle store result score car.tmp tick run data get entity @s Rotation[0] 10
# execute on vehicle run scoreboard players add car.tmp tick 15
# execute on vehicle store result entity @s Rotation[0] float 0.1 run scoreboard players get car.tmp tick