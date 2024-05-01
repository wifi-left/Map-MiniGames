##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# scoreboard players add touzi.tmp.attack board 0
# scoreboard players add touzi.tmp.defend board 0
# scoreboard players set touzi.tmp.number board 0
# scoreboard players set touzi.tmp.type board 0
execute if score touzi.tmp.type board matches -1 run return 0
scoreboard players set tmp.type board 0
execute store result score tmp.type board run data get entity @e[type=armor_stand,tag=desk.touzi.place,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".touzi
execute store result score tmp.number board run data get entity @e[type=armor_stand,tag=desk.touzi.place,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".number

# 角色骰子
## attack
execute if score touzi.tmp.type board matches 0..1 if score tmp.type board matches 4 run scoreboard players set touzi.tmp.type board 4
execute if score touzi.tmp.type board matches 5 if score tmp.type board matches 4 run function minecraft:desk/touzi/confirm/failed
## defend
execute if score touzi.tmp.type board matches 0..1 if score tmp.type board matches 5 run scoreboard players set touzi.tmp.type board 5
execute if score touzi.tmp.type board matches 4 if score tmp.type board matches 5 run function minecraft:desk/touzi/confirm/failed

# 数字骰子
execute if score touzi.tmp.type board matches 0 if score tmp.type board matches 1 run scoreboard players set touzi.tmp.type board 1
# attack
execute if score touzi.tmp.type board matches 0 if score tmp.type board matches 2 run scoreboard players set touzi.tmp.type board 2
# defend
execute if score touzi.tmp.type board matches 0 if score tmp.type board matches 3 run scoreboard players set touzi.tmp.type board 3

execute if score touzi.tmp.type board matches 2 if score tmp.type board matches 4 run function minecraft:desk/touzi/confirm/failed
execute if score touzi.tmp.type board matches 3 if score tmp.type board matches 4 run function minecraft:desk/touzi/confirm/failed
# execute if score touzi.tmp.type board matches 3 if score tmp.type board matches 1 run function minecraft:desk/touzi/confirm/failed

execute if score touzi.tmp.type board matches 1 if score tmp.type board matches 2 run function minecraft:desk/touzi/confirm/failed
execute if score touzi.tmp.type board matches 4 if score tmp.type board matches 2 run function minecraft:desk/touzi/confirm/failed
execute if score touzi.tmp.type board matches 1 if score tmp.type board matches 3 run function minecraft:desk/touzi/confirm/failed
execute if score touzi.tmp.type board matches 4 if score tmp.type board matches 3 run function minecraft:desk/touzi/confirm/failed
execute if score touzi.tmp.type board matches 4 if score tmp.type board matches 5 run function minecraft:desk/touzi/confirm/failed
execute if score touzi.tmp.type board matches 5 if score tmp.type board matches 4 run function minecraft:desk/touzi/confirm/failed

execute if score touzi.tmp.type board matches 4..5 if score tmp.type board matches 1 run scoreboard players operation touzi.tmp.number board += tmp.number board
execute if score touzi.tmp.type board matches 1 if score tmp.type board matches 1 run scoreboard players operation touzi.tmp.number board += tmp.number board

execute if score touzi.tmp.type board matches 2 if score tmp.type board matches 2 run scoreboard players operation touzi.tmp.attack board += tmp.number board
execute if score touzi.tmp.type board matches 3 if score tmp.type board matches 3 run scoreboard players operation touzi.tmp.defend board += tmp.number board


