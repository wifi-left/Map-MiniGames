##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join pillar @s
gamemode adventure @s[gamemode=spectator]
gamemode adventure @s[gamemode=survival]

tellraw @a [{"selector":"@s"}," \u00a7a加入了 \u00a7e幸运之柱"]
title @s title ["\u00a7e幸运之柱"]
title @s subtitle ["运气和实力的比拼"]
tellraw @s ["\n \u00a7e\u00a7l幸运之柱\u00a76：当游戏开始的时候，你每 \u00a7c2s\u00a76 都会获得一个随机的物品。请使用你的物品，让其他的玩家出局！\n"]
execute in airworld run tp @s -92 -62 480 0 0

execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score pillar.state state matches 1.. run function minecraft:pillar/spec
effect give @s instant_health 2 25 true

execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]
