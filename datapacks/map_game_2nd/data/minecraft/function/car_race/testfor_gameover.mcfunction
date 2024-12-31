##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set play.player tick 0
execute as @a[team=car.play,gamemode=adventure] run scoreboard players add play.player tick 1

execute if score play.player tick matches ..1 run function car_race/gameover
