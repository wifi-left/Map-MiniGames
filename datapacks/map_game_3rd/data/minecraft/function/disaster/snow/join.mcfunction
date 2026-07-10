##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join disaster.snow @s
gamemode adventure @s[gamemode=spectator]
gamemode adventure @s[gamemode=survival]
tellraw @a [{"selector":"@s"}," \u00a7a加入了 \u00a7f灾难 · 雪灾"]
title @s title ["\u00a7f灾难 · 雪灾"]
title @s subtitle ["活下去！"]
tellraw @s ["\n \u00a7f灾难 · 雪灾\u00a76：活下去！\n"]
execute in airworld run tp @s 320 -35 154 0 0
xp set @s 0 levels
xp set @s 0 points
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
function player:full_health
execute if score disaster.snow.state state matches 1.. run function minecraft:disaster/snow/spec
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]
