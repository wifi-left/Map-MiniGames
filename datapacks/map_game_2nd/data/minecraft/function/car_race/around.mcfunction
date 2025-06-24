##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove ridder
execute on passengers run tag @s add ridder
scoreboard players add @p[tag=ridder,team=car.play] car.rounds 1
tellraw @a[team=car.play] [{"selector":"@p[tag=riding,team=car.play]"},"§b完成了第",{"score":{"name":"@p[tag=riding,team=car.play]","objective":"car.rounds"},"color":"yellow"},"§b圈！"]
tellraw @a[team=car.wait] [{"selector":"@p[tag=ridder,team=car.play]"},"§b完成了第",{"score":{"name":"@p[tag=ridder,team=car.play]","objective":"car.rounds"},"color":"yellow"},"§b圈！"]
tp @s 199 81 45
title @p[tag=ridder,team=car.play] title ["\u00a76到达终点线"]
title @p[tag=ridder,team=car.play] subtitle ["\u00a7a你完成了 ",{"score":{"name": "@p[tag=ridder,team=car.play]","objective": "car.rounds"},"color": "yellow"},"\u00a7a 圈"]
execute as @p[tag=ridder,team=car.play] at @s if score @s car.rounds matches 3.. run function car_race/win
tag @a remove ridder



