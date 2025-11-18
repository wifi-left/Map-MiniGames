##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in minecraft:airworld run tp @s -40 182 -116 0 0
execute as @s at @s run playsound entity.player.levelup player @s
xp set @s 0 levels
xp set @s 0 points
title @s title ["\u00a76Wool Wars"]
title @s subtitle ["\u00a77PVP 小游戏"]
tellraw @a [{"selector":"@s"},"§a 加入了§6Wool Wars§a队列。"]
team join wait.sur
gamemode adventure @s[gamemode=survival]
bossbar set surgame:time players @a[team=wait.sur]
clear @s
effect clear @s
execute if score sur.state state matches 1 run function surgame:spec
execute if score sur.state state matches 2 run function surgame:joinlist
execute if score sur.state state matches 3 run function surgame:spec
tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator

