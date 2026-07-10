##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n§e游戏公开测试中...遇到BUG请及时反馈！\n"]
title @s title [{"text":"\u00a7l吸血鬼之夜","color":"#8b038b"}]
title @s subtitle ["\u00a77Vampire Night"]
gamemode adventure @s[gamemode=spectator]
execute in overworld run tp @s -373 20.1 624 -90 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
team join wait.endwolf
effect clear @s
effect give @s instant_health 1 25 true
clear @s
execute if score endwolf.state state matches 1.. run function minecraft:endless_wolf/spec

