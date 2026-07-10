##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join hunger @s
tellraw @a ["§a§l[MESSAGE] ",{"selector":"@s"}," §a加入了小游戏 §4§l饥饿战争"]
execute in airworld run tp @s 453 -49 -308 90 0
execute at @s run playsound entity.player.levelup player @s 141 -49 75 10 1 1
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
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

