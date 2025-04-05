##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=deskgame] at @s run playsound block.anvil.place player @s ~ ~ ~ 1 1 1
scoreboard players set touzi.tmp.money board 0
scoreboard players operation touzi.tmp.money board = touzi.a.attack board
scoreboard players operation touzi.tmp.money board *= 100 board
execute if score touzi.tmp.money board matches ..0 run scoreboard players set touzi.tmp.money board 0
scoreboard players operation touzi.money.a board += touzi.tmp.money board
scoreboard players set desk.time board -1
tellraw @a[tag=touzi.team.a] ["§6团队金币 +",{"score":{"objective":"board","name":"touzi.tmp.money"},"color":"gold"},"§6℗"]

scoreboard players set touzi.tmp.money board 0
scoreboard players operation touzi.tmp.money board = touzi.b.attack board
scoreboard players operation touzi.tmp.money board *= 100 board
execute if score touzi.tmp.money board matches ..0 run scoreboard players set touzi.tmp.money board 0
scoreboard players operation touzi.money.b board += touzi.tmp.money board
tellraw @a[tag=touzi.team.b] ["§6团队金币 +",{"score":{"objective":"board","name":"touzi.tmp.money"},"color":"gold"},"§6℗"]

scoreboard players operation touzi.b.attack board -= touzi.a.defend board
scoreboard players operation touzi.a.attack board -= touzi.b.defend board

execute if score touzi.a.attack board matches 1.. run scoreboard players operation touzi.health.b board -= touzi.a.attack board
execute if score touzi.b.attack board matches 1.. run scoreboard players operation touzi.health.a board -= touzi.b.attack board
scoreboard players set desk.state state 5
execute if score touzi.a.attack board matches ..0 run scoreboard players set touzi.a.attack board 0
execute if score touzi.b.attack board matches ..0 run scoreboard players set touzi.b.attack board 0
execute if score touzi.health.a board matches ..0 run scoreboard players set touzi.health.a board 0
execute if score touzi.health.b board matches ..0 run scoreboard players set touzi.health.b board 0

tellraw @a[team=deskgame] ["\n§7---------------------\n§a§l本轮总结:\n§9队伍A§7有效攻击: ",{"score":{"name":"touzi.a.attack","objective":"board"},"color":"green"},"§a⛏\n§c队伍B§7有效攻击: ",{"score":{"name":"touzi.b.attack","objective":"board"},"color":"green"},"§a⛏\n§7====================\n§9队伍A§7剩余生命: ",{"score":{"name":"touzi.health.a","objective":"board"},"color":"red"},"§c♥\n§c队伍B§7剩余生命: ",{"score":{"name":"touzi.health.b","objective":"board"},"color":"red"},"§c♥\n§7---------------------"]
clear @a[team=deskgame]
function minecraft:desk/touzi/overdetect
execute if score desk.state state matches 1..9 run schedule function minecraft:desk/touzi/round/new_round 4s replace

