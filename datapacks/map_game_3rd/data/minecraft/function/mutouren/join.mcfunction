##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join mutouren @s
gamemode adventure @s[gamemode=spectator]
gamemode adventure @s[gamemode=survival]
tellraw @a [{"selector":"@s"}," \u00a7a加入了 \u00a7b1、2、3，木头人"]
title @s title ["\u00a7b1、2、3，木头人"]
title @s subtitle ["跑到终点！"]
tellraw @s ["\n \u00a7b\u00a7l1、2、3，木头人\u00a76：快速到达终点（绿宝石）！鬼会说“1、2、3，木头人，不许动”。当鬼说到“不许动”时候，停止你的运动。否则你将会返回出生点。\n"]
execute in parkourworld run tp @s 38 -59 421 -90 0
xp set @s 0 levels
xp set @s 0 points
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score mutouren.state state matches 1.. run function minecraft:mutouren/spec
effect give @s instant_health 2 25 true

execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]
