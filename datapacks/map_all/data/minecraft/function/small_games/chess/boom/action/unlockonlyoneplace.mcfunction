##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
fill 79 120 50 69 120 60 minecraft:orange_stained_glass replace glass

scoreboard players set boom.fill.result board 0

execute store result score boom.fill.result board if score boom.in.idx1 board matches 0 if score boom.in.idx2 board matches 0 run fill 79 120 60 77 120 58 glass replace orange_stained_glass
execute store result score boom.fill.result board if score boom.in.idx1 board matches 0 if score boom.in.idx2 board matches 1 run fill 79 120 56 77 120 54 glass replace orange_stained_glass
execute store result score boom.fill.result board if score boom.in.idx1 board matches 0 if score boom.in.idx2 board matches 2 run fill 79 120 52 77 120 50 glass replace orange_stained_glass
execute store result score boom.fill.result board if score boom.in.idx1 board matches 1 if score boom.in.idx2 board matches 0 run fill 75 120 60 73 120 58 glass replace orange_stained_glass
execute store result score boom.fill.result board if score boom.in.idx1 board matches 1 if score boom.in.idx2 board matches 1 run fill 75 120 56 73 120 54 glass replace orange_stained_glass
execute store result score boom.fill.result board if score boom.in.idx1 board matches 1 if score boom.in.idx2 board matches 2 run fill 75 120 52 73 120 50 glass replace orange_stained_glass
execute store result score boom.fill.result board if score boom.in.idx1 board matches 2 if score boom.in.idx2 board matches 0 run fill 71 120 60 69 120 58 glass replace orange_stained_glass
execute store result score boom.fill.result board if score boom.in.idx1 board matches 2 if score boom.in.idx2 board matches 1 run fill 71 120 56 69 120 54 glass replace orange_stained_glass
execute store result score boom.fill.result board if score boom.in.idx1 board matches 2 if score boom.in.idx2 board matches 2 run fill 71 120 52 69 120 50 glass replace orange_stained_glass

execute if score boom.fill.result board matches ..0 run tellraw @a[team=chestgame,gamemode=adventure] ["\u00a7e该区域已被占满，所以您可以选择任意位置下这一步棋。"]
execute if score boom.fill.result board matches ..0 run fill 79 120 50 69 120 60 minecraft:glass replace orange_stained_glass
