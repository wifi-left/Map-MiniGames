##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
title @s title [{"text":"抢板凳","color":"#965eff","bold": true}]
title @s subtitle ["\u00a7rCHAIR GAME !"]
team join chair @s
tellraw @a ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"抢板凳","color":"#965eff","bold":true}," §7!"]
tellraw @s ["\n\u00a7a\u00a7l 抢板凳\n\u00a76\u00a7l 游戏规则\n\u00a7b 游戏开始后，在抢板凳信号发出时，抢夺“板凳”！\n"]
# /tp @s -166.0 -61 -394.0
execute in overworld run tp @s -166 -50 -394 -90 0
execute if score chair.state state matches 1.. run function minecraft:chair/spec

playsound entity.player.levelup player @s 14 3 -44 1 1 1
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

