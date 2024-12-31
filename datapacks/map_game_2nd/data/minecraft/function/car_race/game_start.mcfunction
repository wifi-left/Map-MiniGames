##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=car.play] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 2 2 1

title @a[team=car.play] title [{"text":"Car Race","color":"#009966","bold": true}]
title @a[team=car.play] subtitle ["\u00a7e游戏开始！冲刺！" ]
tellraw @a[team=car.play] ["\u00a7e游戏开始！"]
# fill 196 82 42 202 81 42 air
fill 202 82 41 196 81 43 air
scoreboard players set car.state state 1
tellraw @a[team=car.play] ["\u00a7b温馨提示：您可以使用",{"keybind":"key.forward","color":"yellow"},"\u00a7b 加速。"]

