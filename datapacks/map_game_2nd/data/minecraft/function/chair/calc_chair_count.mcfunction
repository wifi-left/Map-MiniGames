scoreboard players set chair.player tick 0
execute as @a[team=chair,gamemode=adventure] run scoreboard players add chair.player tick 1
scoreboard players set chair.count board 1
scoreboard players operation chair.count board = chair.player tick
scoreboard players set 2 board 2
execute if score chair.player tick matches 31.. run scoreboard players operation chair.count board /= 2 board
execute if score chair.player tick matches 21..30 run scoreboard players set chair.count board 15
execute if score chair.player tick matches 15..20 run scoreboard players set chair.count board 10
execute if score chair.player tick matches 10..14 run scoreboard players set chair.count board 8
execute if score chair.player tick matches 7..9 run scoreboard players set chair.count board 5
execute if score chair.player tick matches 4..6 run scoreboard players set chair.count board 3
execute if score chair.player tick matches 3 run scoreboard players set chair.count board 2
execute if score chair.player tick matches 0..2 run scoreboard players set chair.count board 1