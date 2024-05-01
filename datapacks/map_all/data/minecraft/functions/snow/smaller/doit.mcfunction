##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 3 17 -74 ->  2 17 -74
# fill 3 3 -99 -47 29 -99 air replace #minecraft:snowmineable
# fill 3 29 -49 -47 3 -49 air replace #minecraft:snowmineable
# fill 3 3 -99 3 29 -49 air replace #minecraft:snowmineable -> 2
# fill 3 3 -49 -47 29 -49 air replace #minecraft:snowmineable

# 3 17 -74: fill ~ ~ ~-25 ~ ~ ~25 air replace #minecraft:snowmineable
summon marker 3 3 -74 {Tags:["snow.tp"]}
scoreboard players operation snow.tp board = snow.sq board
execute as @e[tag=snow.tp] at @s run function snow/smaller/move1
execute as @e[tag=snow.tp] at @s run fill ~ 3 ~-25 ~ 29 ~25 air replace #minecraft:snowmineable
execute as @e[tag=snow.tp] at @s run tp @s ~-1 ~ ~
execute as @e[tag=snow.tp] at @s run fill ~ 3 ~-25 ~ 29 ~25 snow_block replace #minecraft:snowmineable

kill @e[tag=snow.tp]

summon marker -47 3 -74 {Tags:["snow.tp"]}
scoreboard players operation snow.tp board = snow.sq board
execute as @e[tag=snow.tp] at @s run function snow/smaller/move2
execute as @e[tag=snow.tp] at @s run fill ~ 3 ~-25 ~ 29 ~25 air replace #minecraft:snowmineable
execute as @e[tag=snow.tp] at @s run tp @s ~1 ~ ~
execute as @e[tag=snow.tp] at @s run fill ~ 3 ~-25 ~ 29 ~25 snow_block replace #minecraft:snowmineable

kill @e[tag=snow.tp]

summon marker -22 3 -49 {Tags:["snow.tp"]}
scoreboard players operation snow.tp board = snow.sq board
execute as @e[tag=snow.tp] at @s run function snow/smaller/move3
execute as @e[tag=snow.tp] at @s run fill ~-25 3 ~ ~25 29 ~ air replace #minecraft:snowmineable
execute as @e[tag=snow.tp] at @s run tp @s ~ ~ ~-1
execute as @e[tag=snow.tp] at @s run fill ~-25 3 ~ ~25 29 ~ snow_block replace #minecraft:snowmineable

kill @e[tag=snow.tp]

summon marker -22 18 -99 {Tags:["snow.tp"]}
scoreboard players operation snow.tp board = snow.sq board
execute as @e[tag=snow.tp] at @s run function snow/smaller/move4
execute as @e[tag=snow.tp] at @s run fill ~-25 3 ~ ~25 29 ~ air replace #minecraft:snowmineable
execute as @e[tag=snow.tp] at @s run tp @s ~ ~ ~1
execute as @e[tag=snow.tp] at @s run fill ~-25 3 ~ ~25 29 ~ snow_block replace #minecraft:snowmineable

kill @e[tag=snow.tp]

