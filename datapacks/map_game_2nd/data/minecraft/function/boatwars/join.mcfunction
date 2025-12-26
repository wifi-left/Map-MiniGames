##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n§e游戏公开测试中...遇到BUG请及时反馈！\n"]
title @s title [{"text":"\u00a7b\u00a7lBoat Wars","color":"#F28500"}]
title @s subtitle ["\u00a77Shoot them down!"]
gamemode adventure @s
execute in airworld run tp @s 591 1 -6 0 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
team join btw.wait
effect clear @s
effect give @s instant_health 1 25 true
clear @s
scoreboard players reset @s btw.boattype
scoreboard players reset @s btw.gunspeed
scoreboard players reset @s btw.coin

