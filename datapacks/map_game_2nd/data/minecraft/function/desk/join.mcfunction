##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in lobby run tp @s 35 7 43 -90 0
tellraw @s ["\n§e该类游戏还在公开测试阶段！\n如发现BUG，最好请录制一个视频，然后向作者反馈。\n§7从4000年前古埃及的塞尼特棋直至40,000年的茫茫星海，演绎于一桌之上!\n"]
title @s title [{"text":"桌游","color":"#0099CC","bold": true}]
title @s subtitle ["\u00a77Good Luck and Have Fun!"]
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1

team join deskgame

tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator

execute if score desk.state state matches 1.. run function minecraft:desk/spec
clear @s
effect clear @s
effect give @s instant_health 1 25 true