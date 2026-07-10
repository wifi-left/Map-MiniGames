##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in minecraft:airworld run tp @s -40 182 -116 0 0
execute as @s at @s run playsound entity.player.levelup player @s
xp set @s 0 levels
xp set @s 0 points
title @s title ["\u00a79生存游戏"]
title @s subtitle ["\u00a77Survival game"]
tellraw @a [{"selector":"@s"},"§a 加入了§9生存游戏§a队列。"]
team join wait.sur
gamemode adventure @s[gamemode=survival]
bossbar set surgame:time players @a[team=wait.sur]
clear @s
effect clear @s
execute if score sur.state state matches 1 run function surgame:spec
execute if score sur.state state matches 2 run function surgame:joinlist
execute if score sur.state state matches 3 run function surgame:spec
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

