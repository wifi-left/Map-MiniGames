##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @s 406 1 -431 -90 0
team join hide.wait
title @s title ["\u00a7b\u00a7l方块躲猫猫"]
title @s subtitle ["\u00a7a猜猜我是谁？"]
playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
clear @s
effect clear @s
effect give @s instant_health 2 25 true
execute if score hide.state state matches 1.. run function minecraft:hideseek/spec

tellraw @a [{"selector":"@s"},"§a 加入了§b方块躲猫猫§a游戏。"]
tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
scoreboard players reset @s die
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator

