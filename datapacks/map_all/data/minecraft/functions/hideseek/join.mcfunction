tp @s 431 67 -262 180 0
team join hide.wait
title @s title ["\u00a7bHide and Seek"]
title @s subtitle ["\u00a7a猜猜我是谁？"]
playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
clear @s
effect clear @s
effect give @s instant_health 2 25 true
tellraw @a [{"selector":"@s"},"\u00a7a 加入了\u00a7b躲猫猫游戏。"]
