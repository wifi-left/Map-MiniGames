##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[gamemode=adventure,team=wolfpeople] at @s run function twolf/action/per/tpback_real
scoreboard players operation wolf.time board = wolf.resttime board
tellraw @a[tag=wolf.tip] ["\u00a7a继续发言。"]
scoreboard players set wolf.event board 10
execute if score wolf.time board matches ..20 run scoreboard players add wolf.time board 30
clear @a[tag=wolf.tip]
execute as @a[tag=wolf.tip,gamemode=adventure] run function twolf/items/day
