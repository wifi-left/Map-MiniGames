##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join fishing @s
gamemode adventure @s[gamemode=spectator]
gamemode adventure @s[gamemode=survival]
tellraw @a [{"selector":"@s"}," \u00a7a加入了 \u00a7b钓鱼达人"]
title @s title ["\u00a7b钓鱼达人"]
title @s subtitle ["钓鱼！"]
tellraw @s ["\n \u00a7b\u00a7l钓鱼\u00a76：钓鱼！\n"]
execute in overworld run tp @s -213 -60 375 0 0
xp set @s 0 levels
xp set @s 0 points
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score fishing.state state matches 1.. run function minecraft:fishing/spec
effect give @s instant_health 2 25 true

tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]
