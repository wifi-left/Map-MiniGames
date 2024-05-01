##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute store result score boom.tmp.x1 board run data get entity @s Pos[0]
execute store result score boom.tmp.z1 board run data get entity @s Pos[2]

scoreboard players set 79 board 79
scoreboard players set 60 board 60
scoreboard players set boom.tmp.z board 0
scoreboard players set boom.tmp.x board 0
scoreboard players operation boom.tmp.x1 board -= 79 board
scoreboard players operation boom.tmp.z1 board -= 60 board
scoreboard players operation boom.tmp.x board -= boom.tmp.x1 board
scoreboard players operation boom.tmp.z board -= boom.tmp.z1 board

scoreboard players set boom.tmp.idx1 board 0
scoreboard players set boom.tmp.idx2 board 0

execute if score boom.tmp.x board matches 4.. run scoreboard players add boom.tmp.idx1 board 1
execute if score boom.tmp.x board matches 4.. run scoreboard players remove boom.tmp.x board 4
execute if score boom.tmp.z board matches 4.. run scoreboard players add boom.tmp.idx2 board 1
execute if score boom.tmp.z board matches 4.. run scoreboard players remove boom.tmp.z board 4

execute if score boom.tmp.x board matches 4.. run scoreboard players add boom.tmp.idx1 board 1
execute if score boom.tmp.x board matches 4.. run scoreboard players remove boom.tmp.x board 4
execute if score boom.tmp.z board matches 4.. run scoreboard players add boom.tmp.idx2 board 1
execute if score boom.tmp.z board matches 4.. run scoreboard players remove boom.tmp.z board 4

# tellraw @a [{"score":{"objective": "board","name": "boom.tmp.idx1"}},":",{"score":{"objective": "board","name": "boom.tmp.idx2"}},":",{"score":{"objective": "board","name": "boom.tmp.x"}},",",{"score":{"objective": "board","name": "boom.tmp.z"}}]
