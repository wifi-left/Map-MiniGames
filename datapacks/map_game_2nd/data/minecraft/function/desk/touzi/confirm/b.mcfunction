##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless score desk.state state matches 4 run tellraw @s ["\u00a7c这不是你们的轮合。"]
execute unless score desk.state state matches 4 run return 0
execute if score desk.time board matches ..59 run scoreboard players set desk.time board 60

scoreboard players set touzi.tmp.number board 0
scoreboard players set touzi.tmp.attack board 0
scoreboard players set touzi.tmp.type board 0
scoreboard players set touzi.tmp.defend board 0
execute as @e[type=armor_stand,tag=desk.touzi.place,tag=touzi.b] at @s run function minecraft:desk/touzi/confirm/total
execute if score touzi.tmp.type board matches 4..5 run function minecraft:desk/touzi/confirm/total_numbers

execute as @e[type=armor_stand,tag=desk.touzi.place,tag=touzi.b] at @s run function minecraft:desk/touzi/confirm/clear_item_b
execute if score touzi.tmp.type board matches -1 run function desk/touzi/confirm/failed
tellraw @s ["\u00a77---------------------\n\u00a76\u00a7l本次出牌小结:\n\u00a7c攻击: ",{"score":{"name": "touzi.tmp.attack","objective": "board"},"color": "gold"},"\n\u00a7b防御: ",{"score":{"name": "touzi.tmp.defend","objective": "board"},"color": "gold"},"\n\u00a77---------------------"]

scoreboard players operation touzi.b.attack board += touzi.tmp.attack board
scoreboard players operation touzi.b.defend board += touzi.tmp.defend board

