##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
forceload add 29 111 -7 75
fill -5 17 77 30 17 112 glass

title @a[team=wait.color] title [{"text":"Color Blindness Game","color":"#009966","bold": true}]
title @a[team=wait.color] subtitle ["\u00a7rShine your eyes !"]
tellraw @a[team=wait.color] ["\n\u00a76    游戏开始！方块将在\u00a7e3\u00a76秒后开始变化！ ","\n"]
tp @a[team=wait.color] 13 18 95
execute as @a[team=wait.color] positioned 13 18 95 run spreadplayers 13 95 0 16 under 22 false @s
execute as @a[team=wait.color] at @s run playsound entity.player.levelup player @s 11 17 93 1 1 1
team join play.color @a[team=wait.color]
scoreboard players set color.state state 1
schedule clear minecraft:color/summon
schedule function minecraft:color/summon 3s
scoreboard players operation color.tt tick = color.time state
scoreboard players operation color.tre tick = color.maxtime state
tellraw @a[team=play.color] ["\u00a7c\u00a7l 注意！！！ 在检测颜色时不同颜色的方块将会消失！"]

fill -7 17 75 32 17 114 air

fill -5 17 77 30 17 112 glass
# fill -7 17 75 29 17 111 air
# execute if score color.tick tick matches ..0 run scoreboard players set color.state state 3
# execute if score color.tick tick matches ..0 run scoreboard players operation color.tick tick = color.tt state
# execute if score color.tick tick matches ..0 if score color.tre tick matches 1.. run scoreboard players remove color.tt state 1
# execute if score color.tick tick matches ..0 if score color.tre tick matches 1.. run scoreboard players remove color.tre tick 1
