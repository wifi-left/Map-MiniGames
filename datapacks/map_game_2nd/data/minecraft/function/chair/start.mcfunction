##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill 6 10 -49 38 10 -81 minecraft:white_wool
# /
title @a[team=chair] title [{"text":"抢板凳","color":"#5ed3ff","bold": true}]
title @a[team=chair] subtitle ["\u00a7e游戏将在§c5§e秒后开始 !"]
tellraw @a[team=chair] ["\n§6    游戏开始！ ","\n"]
schedule clear minecraft:chair/summon
# schedule function minecraft:chair/summon 5s replace
tellraw @a[team=chair] ["\n\u00a7a\u00a7l 抢板凳\n\u00a76\u00a7l 游戏规则\n\u00a7b 游戏开始后，在抢板凳信号发出时，抢夺“板凳”！\n"]
scoreboard players set chair.state state 2
execute as @a[team=chair,gamemode=adventure] in overworld run spreadplayers -166.0 -394.0 0 16 under -58 false @s
scoreboard players set chair.state state 3
scoreboard players set chair.time board 6
