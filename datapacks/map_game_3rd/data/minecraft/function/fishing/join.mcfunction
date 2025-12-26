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

execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]
