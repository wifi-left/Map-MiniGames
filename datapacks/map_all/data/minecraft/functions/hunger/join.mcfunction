team join hunger @s
tellraw @a ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"}," \u00a7a加入了小游戏 \u00a74\u00a7l饥饿战争"]
execute in hungerworld run tp @s 141 -49 75 90 0
execute in hungerworld run playsound entity.player.levelup player @s 141 -49 75 10 1 1
tellraw @s ["\n\u00a74\u00a7l ※ 饥饿游戏\n\n\u00a7b    游戏开始后，你将有 1 分钟时间收集资源。1 分钟后 PVP 将被允许，存活到最后的玩家即为获胜者。\n"]
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