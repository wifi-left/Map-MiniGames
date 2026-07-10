##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
title @s title [{"text":"建筑猜猜乐","color":"#5ed3ff","bold": true}]
title @s subtitle ["\u00a7rGuess the Building !"]
team join build_guess @s
tellraw @a ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"建筑猜猜乐","color":"#5ed3ff","bold":true}," §7!"]
tellraw @s ["\n\u00a7a\u00a7l 建筑猜猜乐\n\u00a76\u00a7l 游戏规则\n\u00a7b 建造一个建筑，让你的同伴能够猜出来！\n"]

tag @s remove build_guess.guesser
tag @s remove build_guess.builder
tag @s remove build_guess.guesser.win

xp set @s 0 levels
xp set @s 0 points
execute in parkourworld run tp @s -116 -48 294 0 0
execute if score build_guess.state state matches 1.. run function minecraft:build_guess/spec

execute at @s run playsound entity.player.levelup player @s 14 3 -44 1 1 1
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

tag @s remove build_guess.nokiller