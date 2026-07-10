##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join mining @s
gamemode adventure @s[gamemode=spectator]
gamemode adventure @s[gamemode=survival]
tellraw @a [{"selector":"@s"}," \u00a7a加入了 \u00a74挖矿达人"]
title @s title ["\u00a74挖矿达人"]
title @s subtitle ["挖矿！寻找宝藏！"]
tellraw @s ["\n \u00a74\u00a7l挖矿达人\u00a76：使用工具，挖矿，收集资源！\n"]
execute in airworld run tp @s -112 -62 480 0 0
xp set @s 0 levels
xp set @s 0 points
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score mining.state state matches 1.. run function minecraft:mining/spec
effect give @s instant_health 2 25 true

execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]
