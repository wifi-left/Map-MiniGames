##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

title @a[team=car.play] title [{"text":"Car Race","color":"#009966","bold": true}]
title @a[team=car.play] subtitle ["\u00a7e将在" ,{"score":{"name": "car.number","objective": "tick"},"color": "red"},"\u00a7e 秒后开始。"]
tellraw @a[team=car.play] ["\u00a7e游戏将在" ,{"score":{"name": "car.number","objective": "tick"},"color": "red"},"\u00a7e 秒后开始。"]
execute as @a[team=car.play] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0.1 1
execute if score car.number tick matches ..0 run function car_race/game_start
scoreboard players remove car.number tick 1

# scoreboard players set
