##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join miner @s
gamemode adventure @s[gamemode=spectator]
gamemode adventure @s[gamemode=survival]
tellraw @a [{"selector":"@s"}," \u00a7a加入了 \u00a72一掘到底"]
title @s title ["\u00a72一掘到底"]
title @s subtitle ["往下挖！挖到底！"]
tellraw @s ["\n \u00a72\u00a7l一掘到底\u00a76：当游戏开始的时候，你会获得挖掘工具。请使用你的工具，挖到最底下！\n"]
execute in airworld run tp @s -102 -62 480 0 0

execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score miner.state state matches 1.. run function minecraft:miner/spec
effect give @s instant_health 2 25 true

execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]
