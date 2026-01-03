##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 绵羊突击队 Sheep Troopers
team join wait.sheepwars @s
gamemode adventure @s[gamemode=spectator]
tellraw @a [{"selector":"@s"}," \u00a77加入了 \u00a7b绵羊突击队\u00a77。"]
title @s title ["\u00a7b绵羊突击队"]
title @s subtitle ["Sheep Troopers"]
tellraw @s ["\n\u00a7a欢迎来到 \u00a7b绵羊突击队 \u00a7a的世界！\n\u00a7e\u00a7l右键点击\u00a77发射的羊将有重力\n\u00a7e\u00a7lF键\u00a77发射的羊将无重力飞行！\n"]
execute in airworld run tp @s 501 -61 734 0 0

execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score sheepwars.state state matches 1.. run function minecraft:sheepwars/spec
effect give @s instant_health 2 25 true

tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]
