scoreboard players set play.player tick 0
execute as @a[team=car.play,gamemode=adventure] run scoreboard players add play.player tick 1

execute if score play.player tick matches ..1 run function car_race/gameover
