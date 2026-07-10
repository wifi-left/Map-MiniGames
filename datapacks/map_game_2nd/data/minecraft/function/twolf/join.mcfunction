##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n§e该游戏还在公开测试阶段！\n如发现BUG，最好请录制一个视频，然后向作者反馈。\n"]
title @s title ["\u00a7b\u00a7l狼人杀"]
title @s subtitle ["\u00a77Who Killed me?"]
execute in killerworld run tp @s 30 6 31 0 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1

team join wait.wolfpeople

execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

execute if score twolf.state state matches 1.. run function minecraft:twolf/spec


