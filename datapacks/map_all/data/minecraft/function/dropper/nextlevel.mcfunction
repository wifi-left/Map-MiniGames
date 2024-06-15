##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=dropper] [{"selector":"@s"}," \u00a7b完成了\u00a7d第 ",{"score":{"name": "@s","objective": "dropper.level"},"color": "aqua"}," \u00a7d关"]
scoreboard players add @s dropper.level 1
execute if score @s dropper.level matches 11.. run function dropper/win
title @s subtitle ["\u00a7a已到达下一关"]
execute if score @s dropper.level matches 1..10 run title @s title ["\u00a7d第 ",{"score":{"name": "@s","objective": "dropper.level"},"color": "aqua"},"\u00a7d 关"]
execute if score @s dropper.level matches 1..10 run function dropper/playlevel
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
function dropper/save
