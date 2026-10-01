execute store result score temp.x temp run data get entity @s Pos[0]
# 94-233
scoreboard players set 142 board 142
scoreboard players set blockrace.tmp board 0
scoreboard players operation blockrace.tmp board = temp.x temp
execute run scoreboard players operation blockrace.tmp board -= 142 board