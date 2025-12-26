##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @s 138.0 84 -186 0 0
team join hide.wait2
title @s title ["\u00a7b\u00a7l道具躲猫猫"]
title @s subtitle ["\u00a7a道具模式 - Tools"]
playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
bossbar set minecraft:hideseek2 players
clear @s
effect clear @s
effect give @s instant_health 2 25 true
tellraw @a [{"selector":"@s"},"§a 加入了§b道具躲猫猫 游戏。"]
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

