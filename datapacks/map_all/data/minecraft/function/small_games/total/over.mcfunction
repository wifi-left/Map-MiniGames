##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["\u00a7b\u00a7l小游戏派对 \u00a72游戏结束！"]
tag @a remove total.win
scoreboard players reset total.best board
execute as @a[team=play.total] run scoreboard players operation total.best board > @s score
execute as @a[team=play.total] if score @s score = total.best board run tag @s add total.win
title @a[team=play.total] title ["\u00a7cGAME OVER"]
title @a[team=play.total,tag=total.win] title ["\u00a76YOU WIN"]

title @a[team=play.total] subtitle ["\u00a7b获胜者：",{"selector":"@a[tag=total.win]"}]
tellraw @a[team=play.total] ["\u00a7b获胜者：",{"selector":"@a[tag=total.win]"}]
tag @a remove total.win
schedule function small_games/total/tp 5s
scoreboard players set gametotal state 2000

