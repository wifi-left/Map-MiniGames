execute in dropperworld run teleport @s 19 -59 57 180 0
playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
title @s title ["\u00a7a\u00a7lDropper"]
title @s subtitle ["\u00a7b星跳水立方"]
tellraw @s ["\n   \u00a7d ★ \u00a7b星跳水立方\n\n\u00a7a    想办法从平台顶端到达平台底端！并且寻找传送门进入下一关。\n"]
tellraw @a ["\u00a7b[Game] ",{"selector":"@s"},"\u00a7d 加入了\u00a7a星跳水立方\u00a7d游戏。"]
team join dropper
clear @s