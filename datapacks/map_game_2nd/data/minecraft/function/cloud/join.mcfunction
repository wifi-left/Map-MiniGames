##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

team join wait.sw @s
gamemode adventure @s
title @s title ["\u00a7f\u00a7l云端争霸"]
title @s subtitle ["\u00a7aCloudwars"]
execute in airworld run tp @s 688 44 353 0 0
clear @s
effect clear @s
effect give @s instant_health 1 25 true
execute if score sw.state state matches 1.. run function minecraft:cloud/spec

xp set @s 0 levels
xp set @s 0 points
tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator

