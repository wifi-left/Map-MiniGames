team join golf @s
tellraw @a [{"selector":"@s"},"\u00a7a 加入了\u00a7d高尔夫游戏\u00a7a。"]
title @s title ["\u00a7dGOLF 高尔夫游戏"]
title @s subtitle ["\u00a7aShoot the \u00a7eBall \u00a7ainto the \u00a7bHole"]
tellraw @s ["\u00a7d\u00a7lGOLF 高尔夫游戏 ＞ \n\u00a7a将 \u00a7eBall \u00a7a射进 \u00a7bHole \u00a7a中。\n"]
execute in minecraft:golfworld run tp @s -121 -60 115 90 0
playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score golf.state state matches 1.. run function minecraft:golf/spec
effect give @s instant_health 2 25 true
tag @s remove golf.waitshoot