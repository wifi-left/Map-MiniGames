##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute unless score desk.state state matches 3 run tellraw @s ["§c这不是你们的轮合。"]
execute unless score desk.state state matches 3 run return 0
execute if score desk.time board matches ..59 run scoreboard players set desk.time board 60

scoreboard players set touzi.tmp.number board 0
scoreboard players set touzi.tmp.type board 0
scoreboard players set touzi.tmp.attack board 0
scoreboard players set touzi.tmp.defend board 0
execute as @e[type=marker,tag=touzi.a] at @s run function minecraft:desk/touzi/confirm/total
execute if score touzi.tmp.type board matches 4..5 run function minecraft:desk/touzi/confirm/total_numbers
execute as @e[type=marker,tag=touzi.a] at @s run function minecraft:desk/touzi/confirm/clear_item_a
execute if score touzi.tmp.type board matches -1 run function desk/touzi/confirm/failed
tellraw @s ["§7---------------------\n§6§l本次出牌小结:\n§c攻击: ",{"score":{"name":"touzi.tmp.attack","objective":"board"},"color":"gold"},"\n§b防御: ",{"score":{"name":"touzi.tmp.defend","objective":"board"},"color":"gold"},"\n§7---------------------"]

scoreboard players operation touzi.a.attack board += touzi.tmp.attack board
scoreboard players operation touzi.a.defend board += touzi.tmp.defend board

