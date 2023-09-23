# scoreboard players 
title @s[level=1..] actionbar ["\u00a7c冷却中..."]
execute as @s[level=1..] at @s run playsound block.chest.locked player @s ~ ~ ~ 1 2 1
execute as @s[level=1..] at @s run return 0
execute as @s[team=btw.play.a] at @s run function boatgun:shoot/a
execute as @s[team=btw.play.b] at @s run function boatgun:shoot/b
xp set @s 0 points
xp set @s 3 levels