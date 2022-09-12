tellraw @s ["\u00a7c很抱歉，你死了。\n\u00a7f如果还有玩家存活，你将在下一轮复活。"]
title @s title ["\u00a7c你死了"]
title @s subtitle ["\u00a7f如果还有玩家存活，你将在下一轮复活。"]
gamemode spectator @s
scoreboard players set tmp.count tick 0
execute as @a[team=play.zombie,gamemode=adventure] run scoreboard players add tmp.count tick 1
title @a[team=play.zombie] actionbar [{"selector":"@s"}," \u00a7c死了，剩余玩家数量：",{"score":{"name": "tmp.count","objective": "tick"},"color":"gold"}]
tp @s 370.0 22 -155 0 0