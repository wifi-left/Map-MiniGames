##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join hunger @s
tellraw @a ["§a§l[MESSAGE] ",{"selector":"@s"}," §a加入了小游戏 §4§l饥饿战争"]
execute in hungerworld run tp @s 141 -49 75 90 0
execute in hungerworld run playsound entity.player.levelup player @s 141 -49 75 10 1 1
tellraw @s ["\n§4§l ※ 饥饿游戏\n\n§b    游戏开始后，你将有 1 分钟时间收集资源。1 分钟后 PVP 将被允许，存活到最后的玩家即为获胜者。\n"]
clear @s
effect clear @s
effect give @s instant_health 2 25 true
effect give @s saturation 2 25 true
bossbar set minecraft:hungergame players @a[team=hunger]
title @s title ["\u00a74\u00a7l饥饿游戏"]
title @s subtitle ["\u00a7fHunger Game PVP"]
execute if score hunger.state state matches 1.. run function hunger/spec
xp set @s 0 levels
xp set @s 0 points
spawnpoint @s 101 -60 0
tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator

