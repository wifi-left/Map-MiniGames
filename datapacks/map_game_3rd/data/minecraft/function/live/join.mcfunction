##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
title @s title [{"text":"追杀游戏","color":"#5ed3ff","bold": true}]
title @s subtitle ["\u00a7rLIVE LONGEST !"]
team join live @s
tellraw @a ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"追杀游戏","color":"#5ed3ff","bold":true}," §7!"]
tellraw @s ["\n\u00a7a\u00a7l LIVE LONGEST 追杀游戏\n\u00a76\u00a7l 游戏规则\n\u00a7b 逃跑！不要被追杀者抓到！\n"]
xp set @s 0 levels
xp set @s 0 points
execute in overworld run tp @s 183 -62 373 0 0
execute if score live.state state matches 1.. run function minecraft:live/spec
effect clear @s
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

