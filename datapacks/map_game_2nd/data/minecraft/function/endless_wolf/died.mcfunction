##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.endwolf] [{"selector":"@s"},"§c 被星星哄睡着啦✨ (っ˘̩╭╮˘̩)っ♡"]
tellraw @a[team=wait.endwolf] [{"selector":"@s"},"§c 被星星哄睡着啦✨ (っ˘̩╭╮˘̩)っ♡"]
title @s title "\u00a7c你死了"
title @s subtitle "\u00a77你已进入旁观模式"
gamemode spectator @s
tp @s -317 30 624 0 90
effect clear @s
effect give @s instant_health 1 25 true
clear @s
