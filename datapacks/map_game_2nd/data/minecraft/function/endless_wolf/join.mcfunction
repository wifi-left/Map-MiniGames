##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n§e游戏公开测试中...遇到BUG请及时反馈！\n"]
title @s title [{"text":"\u00a7l吸血鬼之夜","color":"#8b038b"}]
title @s subtitle ["\u00a77Vampire Night"]
gamemode adventure @s[gamemode=spectator]
execute in overworld run tp @s -373 20.1 624 -90 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1
tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
team join wait.endwolf
effect clear @s
effect give @s instant_health 1 25 true
clear @s
execute if score endwolf.state state matches 1.. run function minecraft:endless_wolf/spec

