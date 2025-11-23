scoreboard players operation random_parkour.x board += random_parkour.tempx temp
scoreboard players operation random_parkour.y board += random_parkour.tempy temp
scoreboard players operation random_parkour.z board += random_parkour.tempz temp

execute store result entity @s Pos[0] double 1 run scoreboard players get random_parkour.x board
execute store result entity @s Pos[1] double 1 run scoreboard players get random_parkour.y board
execute store result entity @s Pos[2] double 1 run scoreboard players get random_parkour.z board

schedule function random_parkour/map/next_move 5t append