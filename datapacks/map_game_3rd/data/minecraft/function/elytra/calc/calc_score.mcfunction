execute store result score temp.x temp run data get entity @s Pos[0]
execute store result score temp.y temp run data get entity @s Pos[1]
# 94-233
scoreboard players set 94 board 94
scoreboard players set elytra.tmp board 0
scoreboard players operation elytra.tmp board = temp.x temp
execute if score temp.y temp matches 66.. run scoreboard players operation elytra.tmp board -= 94 board
execute if score temp.y temp matches 35..65 run scoreboard players set elytra.tmp board 233
execute if score temp.y temp matches 35..65 run scoreboard players operation elytra.tmp board -= temp.x temp
execute if score temp.y temp matches 35..65 run scoreboard players add elytra.tmp board 139

execute if score temp.y temp matches 6..34 run scoreboard players operation elytra.tmp board -= 94 board
execute if score temp.y temp matches 6..34 run scoreboard players add elytra.tmp board 278

execute if score temp.y temp matches -21..5 run scoreboard players set elytra.tmp board 233
execute if score temp.y temp matches -21..5 run scoreboard players operation elytra.tmp board -= temp.x temp
execute if score temp.y temp matches -21..5 run scoreboard players add elytra.tmp board 417

execute if score temp.y temp matches ..-22 run scoreboard players operation elytra.tmp board -= 94 board
execute if score temp.y temp matches ..-22 run scoreboard players add elytra.tmp board 556