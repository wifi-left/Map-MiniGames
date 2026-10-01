execute store result score temp.x temp run data get entity @s Pos[0]
execute store result score temp.y temp run data get entity @s Pos[1]
# 94-233
scoreboard players set 94 board 94
scoreboard players set elytra.tmp board 0
scoreboard players operation elytra.tmp board = temp.x temp
execute run scoreboard players operation elytra.tmp board -= 94 board