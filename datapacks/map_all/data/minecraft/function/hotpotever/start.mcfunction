##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill 6 10 -49 38 10 -81 minecraft:white_wool
# /
title @a[team=wait.hotpot] title [{"text":"Hot Potato","color":"#5ed3ff","bold": true}]
tellraw @a[team=wait.hotpot] ["\n§6    游戏将在§e5§6秒后开始！ ","\n"]
tellraw @a[team=wait.hotpot] ["\u00a76\u00a7l 游戏规则\n\u00a7b 游戏开始后，请小心土豆持有者。你被他们攻击后他们的土豆将会被传给你！\n 请注意不要得到土豆！土豆会爆炸！\n"]

scoreboard players operation hotpot.mode board = hotpot.mode state

execute if score hotpot.mode board matches 0 store result score hotpot.mode board run random value 1..4

execute if score hotpot.mode board matches 1 run title @a[team=wait.hotpot] subtitle ["\u00a77普通模式"]
execute if score hotpot.mode board matches 2 run title @a[team=wait.hotpot] subtitle ["\u00a7a弓模式"]
execute if score hotpot.mode board matches 3 run title @a[team=wait.hotpot] subtitle ["\u00a7d三叉戟模式"]
execute if score hotpot.mode board matches 4 run title @a[team=wait.hotpot] subtitle ["\u00a7e弩模式"]

scoreboard players operation hotpot.map board = hotpot.map state

execute if score hotpot.map board matches 0 store result score hotpot.map board run random value 1..3
execute if score hotpot.map board matches ..1 as @a[team=wait.hotpot] run spreadplayers -83 -82 0 14 under 55 false @s
execute if score hotpot.map board matches 2 as @a[team=wait.hotpot] run spreadplayers -72 -143 0 25 under 60 false @s
execute if score hotpot.map board matches 3.. as @a[team=wait.hotpot] run tp @s -106 -46 -118.0 90 0

execute as @a[team=wait.hotpot] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
team join play.hotpot @a[team=wait.hotpot]
scoreboard players set hotpot.state state 1



schedule clear minecraft:hotpotever/summon
schedule function minecraft:hotpotever/summon 5s