# title @s actionbar ["\u00a7cBackward"]
# scoreboard players set @s car.speed 0
execute if score @s car.speed matches 1.. run scoreboard players remove @s car.speed 5
execute if score @s car.speed matches ..0 run scoreboard players set @s car.speed 0
