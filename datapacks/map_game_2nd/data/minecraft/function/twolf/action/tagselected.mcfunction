##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add wolf.selsss
tag @a remove wolf.selected
execute as @a[team=wolfpeople,gamemode=adventure] if score @s park.uuid = @a[tag=wolf.selsss,limit=1] LRS_CS run tag @s add wolf.tp.sels
title @s actionbar ["\u00a76你当前的选择为：",{"selector":"@a[tag=wolf.tp.sels]"}]
execute unless entity @a[tag=wolf.tp.sels] run function minecraft:twolf/action/per/loseobjective
execute as @a[tag=wolf.tp.sels] run tag @s add wolf.selected
tag @a[tag=wolf.tp.sels] remove wolf.tp.sels
tag @s remove wolf.selsss
