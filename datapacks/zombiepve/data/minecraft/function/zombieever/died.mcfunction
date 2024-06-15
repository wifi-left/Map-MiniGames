##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score zombie.mode board matches 1 run tellraw @s ["\u00a7c很抱歉，你死了。"]
execute if score zombie.mode board matches 2 run tellraw @s ["\u00a7c很抱歉，你死了。\n\u00a7e如果还有玩家存活，你将在当前进度完成后复活。"]
execute if score zombie.mode board matches 3 run tellraw @s ["\u00a7c很抱歉，你死了。\n\u00a7c由于模式设置，您已无法复活。"]
title @s title ["\u00a7c你死了"]
execute if score zombie.mode board matches 1 run title @s subtitle ["\u00a7f您已复活"]
execute if score zombie.mode board matches 2 run title @s subtitle ["\u00a7e如果还有玩家存活，你将在当前进度完成后复活"]
execute if score zombie.mode board matches 3 run title @s subtitle ["\u00a7d由于模式设置，您已无法复活"]

scoreboard players set tmp.count tick 0
execute as @a[team=play.zombie,gamemode=adventure] run scoreboard players add tmp.count tick 1
execute if score zombie.mode board matches 2.. run title @a[team=play.zombie] actionbar [{"selector":"@s"}," \u00a7c死了，剩余玩家数量：",{"score":{"name": "tmp.count","objective": "tick"},"color":"gold"}]
tp @s 630 40 -78 90 0
execute if score zombie.mode board matches 1 run function zombieever/fuhuo
execute if score zombie.mode board matches 2.. run gamemode spectator @s
