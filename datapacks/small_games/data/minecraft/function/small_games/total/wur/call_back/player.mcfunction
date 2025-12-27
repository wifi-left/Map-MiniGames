tellraw @s ["\u00a77您的游戏已经结束。请等待另一边游戏结束。"]
title @s actionbar ["\u00a77您的游戏已经结束，请等待另一边游戏结束。"]
title @s subtitle ["\u00a77请等待另一边游戏结束。"]
team join play.total
tag @s remove surback
tag @s remove tmp
tag @s remove bw.player

clear @s
effect clear @s
effect give @s instant_health 2 25 true
gamemode spectator @s

execute in overworld run tp @s 322 89 159 180 0
effect give @s resistance 2 25 true
effect give @s instant_health 2 25 true
effect give @s slow_falling 2 25 true