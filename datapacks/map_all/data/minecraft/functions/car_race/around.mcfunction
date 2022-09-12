scoreboard players add @p[distance=0..1,tag=riding,team=car.play] car.rounds 1
tellraw @a[team=car.play] [{"selector":"@p[distance=0..1,tag=riding,team=car.play]"},"\u00a7b完成了第",{"score":{"name": "@p[distance=0..1,tag=riding,team=car.play]","objective": "car.rounds"},"color": "yellow"},"\u00a7b圈！"]
tellraw @a[team=car.wait] [{"selector":"@p[distance=0..1,tag=riding,team=car.play]"},"\u00a7b完成了第",{"score":{"name": "@p[distance=0..1,tag=riding,team=car.play]","objective": "car.rounds"},"color": "yellow"},"\u00a7b圈！"]
tp @s 199 81 45
title @p[distance=0..1,tag=riding,team=car.play] title ["\u00a76到达终点线"]
title @p[distance=0..1,tag=riding,team=car.play] subtitle ["\u00a7a你完成了 ",{"score":{"name": "@p[distance=0..1,tag=riding,team=car.play]","objective": "car.rounds"},"color": "yellow"},"\u00a7a 圈"]
execute as @p[distance=0..1,tag=riding,team=car.play] at @s if score @s car.rounds matches 3.. run function car_race/win
