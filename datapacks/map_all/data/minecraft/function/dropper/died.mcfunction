##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add @s dropper.failed 1
tellraw @s ["\u00a7c你失败了。 当前失败次数：",{"score":{"name": "@s","objective": "dropper.failed"},"color": "gold"}]
title @s actionbar ["\u00a7c你失败了。"]
scoreboard players add @s dropper.level 0
execute if score @s dropper.level matches ..0 run function dropper/join
execute if score @s dropper.level matches 1..10 run function dropper/playlevel
execute if score @s dropper.level matches 11.. run function dropper/join
