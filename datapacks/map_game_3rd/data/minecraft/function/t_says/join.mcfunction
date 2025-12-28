##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s

title @s title [{"text":"不要相信T氏的话","color":"light_purple","bold": true}]
title @s subtitle ["\u00a7r请按照游戏要求进行行动 !"]
team join t_says @s
tellraw @a ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"不要相信T氏的话","color":"light_purple","bold":true}," §7!"]
tellraw @s ["\n\u00a7a\u00a7l 不要相信T氏的话\n\u00a76\u00a7l 游戏规则\n\u00a7b 请按照游戏要求进行行动。\n"]
xp set @s 0 levels
xp set @s 0 points
execute in overworld run tp @s 183 -52 373 0 0
execute if score t_says.state state matches 1.. run function minecraft:t_says/spec
effect clear @s
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

tag @s remove t_says.finished
tag @s remove t_says.failed