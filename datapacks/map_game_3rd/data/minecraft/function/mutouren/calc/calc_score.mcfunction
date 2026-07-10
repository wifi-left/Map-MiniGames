execute store result score temp.x temp run data get entity @s Pos[0]
# 94-233
scoreboard players set -6 board -6
scoreboard players set mutouren.tmp board 0
scoreboard players operation mutouren.tmp board = temp.x temp
scoreboard players operation mutouren.tmp board -= -6 board