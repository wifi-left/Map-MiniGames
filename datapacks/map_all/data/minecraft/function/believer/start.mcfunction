##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
forceload add 6 -49 38 -81
fill 6 10 -49 38 10 -81 minecraft:white_wool
title @a[team=wait.beli] title [{"text":"Block Believer","color":"#a7d3ff","bold": true}]
title @a[team=wait.beli] subtitle ["\u00a7rBelieve yourself !"]
tellraw @a[team=wait.beli] ["\n§6    游戏开始！方块将在§e3§6秒后开始变化！ ","\n\n§e    游戏介绍：\n    §7游戏开始后，方块将会随机开始变化：\n§f    白色 §a-> §e黄色\n§e    黄色 §a-> §6橙色\n§6    橙色 §a-> §c红色\n§c    红色 §a-> §4消失\n"]
execute as @a[team=wait.beli] run spreadplayers 22 -65 0 16 false @s
execute as @a[team=wait.beli] at @s run playsound entity.player.levelup player @s 14 3 -44 1 1 1
team join play.beli @a[team=wait.beli]
scoreboard players set beli.state state 1
scoreboard players operation temp state = beli.num state
schedule clear minecraft:believer/summon
kill @e[tag=beliran,type=marker]
schedule function minecraft:believer/summon 3s
forceload remove 6 -49 38 -81
team modify play.beli friendlyFire true

