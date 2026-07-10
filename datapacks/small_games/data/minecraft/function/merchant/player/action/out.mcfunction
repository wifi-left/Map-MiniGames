function minecraft:merchant/player/over_turn
gamemode spectator @s
tellraw @a[team=deskgame] [{selector:"@s"}," \u00a7c的金币不够，所以淘汰了。"]
title @s title ["\u00a7c你淘汰了"]
tag @s remove merchant.alive
title @s subtitle ["\u00a7f你的金币不够，所以淘汰了"]
scoreboard players reset @s merchant.coin