##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
title @s title [{"text":"搭路练习","color":"#5ed3ff","bold": true}]
title @s subtitle ["\u00a7rBridge Practice"]
execute unless entity @a[team=bw.bridge] run schedule function minecraft:bridge_practice/clear_all_bridge 2s
team join bw.bridge @s
tellraw @a ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"搭路练习","color":"#5ed3ff","bold":true}," §7!"]

xp set @s 0 levels
xp set @s 0 points
execute in overworld run tp @s 350 -44 -244 0 0
scoreboard players reset @s bw.bridge.count.wool
execute at @s run playsound entity.player.levelup player @s 14 3 -44 1 1 1
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
execute as @s[tag=GLOBAL.SPEC] run gamemode spectator @s

scoreboard players reset @s parkour.tick
