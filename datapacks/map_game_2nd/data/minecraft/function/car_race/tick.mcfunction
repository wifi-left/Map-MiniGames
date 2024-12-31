##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
effect give @a[team=car.play] resistance 2 25 true
tag @a[team=car.play] remove riding
execute as @e[tag=GCAR] on passengers run tag @s[type=player,team=car.play] add riding
tag @e[tag=GCAR] remove being_ridden
execute as @e[tag=GCAR] on passengers as @s[type=player,team=car.play] on vehicle run tag @s add being_ridden
execute as @e[tag=being_ridden,tag=GCAR] at @s if block ~ ~-1 ~ red_wool run function car_race/around
execute as @a[team=car.play] at @s if items entity @s weapon.offhand minecart[custom_data~{gcar:1b}] run function minecraft:car_race/summon_car
execute as @a[team=car.play,tag=riding,gamemode=adventure] at @s run function minecraft:car_race/check_input
execute if score car.state state matches 1 as @a[gamemode=adventure,team=car.play,tag=!riding] at @s run function car_race/back_my_car
execute as @e[tag=GCAR] at @s if block ~ ~-0.5 ~ lime_glazed_terracotta run effect give @s levitation 1 4 true
execute as @e[tag=GCAR] at @s if block ~ ~-0.5 ~ glowstone on passengers run scoreboard players remove @s car.speed 2

execute as @e[type=!player,tag=GCAR] run function minecraft:car_race/move/car_getmotion
execute as @a[team=car.play] if score @s car.speed matches 1.. run scoreboard players remove @s car.speed 3
execute as @a[team=car.play] if score @s car.speed matches ..0 run scoreboard players set @s car.speed 0
execute as @a[team=car.play,gamemode=adventure] at @s run kill @e[type=item,distance=..5]