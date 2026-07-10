##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set need.player tick 0
execute as @a[team=car.play,gamemode=adventure] run scoreboard players add need.player tick 1

scoreboard players set oncar.player tick 0
execute as @a[team=car.play,tag=riding,gamemode=adventure] run scoreboard players add oncar.player tick 1

execute if score need.player tick = oncar.player tick run function car_race/start_count_number

execute as @a[team=car.play,gamemode=adventure,tag=!riding,tag=car.notspawn] run function minecraft:car_race/where_my_car