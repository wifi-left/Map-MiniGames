tellraw @a[team=dropper] [{"selector":"@s"}," \u00a7b完成了\u00a7d第 ",{"score":{"name": "@s","objective": "dropper.level"},"color": "aqua"}," \u00a7d关"]
scoreboard players add @s dropper.level 1
execute if score @s dropper.level matches 11.. run function dropper/win
title @s subtitle ["\u00a7a已到达下一关"]
execute if score @s dropper.level matches 1..10 run title @s title ["\u00a7d第 ",{"score":{"name": "@s","objective": "dropper.level"},"color": "aqua"},"\u00a7d 关"]
playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
execute if score @s dropper.level matches 1..10 run function dropper/playlevel
