##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
title @s title [{"text":"吃豆人","color":"#5ed3ff","bold": true}]
title @s subtitle ["\u00a7rPac-Man !"]
team join pacman @s
tellraw @a ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"吃豆人","color":"#5ed3ff","bold":true}," §7!"]
tellraw @s ["\n\u00a7a\u00a7l PAC-MAN 吃豆人\n\u00a76\u00a7l 游戏规则\n\u00a7b 游戏开始后，请收集“豆子”（地面为金块的位置），小心被吃豆人抓到！\n"]
xp set @s 0 levels
xp set @s 0 points
execute in overworld run tp @s -149 -42 -255 -90 0
execute if score pacman.state state matches 1.. run function minecraft:pacman/spec

playsound entity.player.levelup player @s 14 3 -44 1 1 1
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

