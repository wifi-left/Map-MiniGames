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

tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator

execute if score twolf.state state matches 1.. run function minecraft:twolf/spec


