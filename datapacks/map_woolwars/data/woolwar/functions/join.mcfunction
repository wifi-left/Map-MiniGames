execute in minecraft:airworld run tp @s -40 182 -116 0 0
execute as @s at @s run playsound entity.player.levelup player @s
xp set @s 0 levels
xp set @s 0 points
title @s title ["\u00a79生存游戏"]
title @s subtitle ["\u00a77Survival game"]
tellraw @a [{"selector":"@s"},"\u00a7a 加入了\u00a79生存游戏\u00a7a队列。"]
team join wait.sur
gamemode adventure @s[gamemode=survival]
bossbar set surgame:time players @a[team=wait.sur]
clear @s
effect clear @s
execute if score sur.state state matches 1 run function surgame:spec
execute if score sur.state state matches 2 run function surgame:joinlist
execute if score sur.state state matches 3 run function surgame:spec
