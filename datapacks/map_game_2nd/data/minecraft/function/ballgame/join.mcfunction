##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join ballgame @s
gamemode adventure @s[gamemode=spectator]
tellraw @a [{"selector":"@s"}," 加入了 \u00a76球类游戏"]
title @s title ["\u00a7e球类游戏"]
title @s subtitle ["Ball Games"]
execute in overworld run tp @s 783 -31 -173 0 0
tag @s remove ball.teama
tag @s remove ball.teamb
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
xp set @s 0 levels
xp set @s 0 points
clear @s
effect clear @s
execute if score ballgame.state state matches 1.. run function minecraft:ballgame/spec
effect give @s instant_health 2 25 true

execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]
