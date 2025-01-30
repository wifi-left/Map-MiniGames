tellraw @a[team=play.endwolf] [{"selector":"@s"},"\u00a7c 被星星哄睡着啦✨ (っ˘̩╭╮˘̩)っ♡"]
tellraw @a[team=wait.endwolf] [{"selector":"@s"},"\u00a7c 被星星哄睡着啦✨ (っ˘̩╭╮˘̩)っ♡"]
title @s title "\u00a7c你死了"
title @s subtitle "\u00a77你已进入旁观模式"
gamemode spectator @s
tp @s -317 30 624 0 90
effect clear @s
effect give @s instant_health 1 25 true
clear @s