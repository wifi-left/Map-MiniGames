##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add wolf.sel
execute as @a[team=wolfpeople,gamemode=adventure] if score @s park.uuid = @a[tag=wolf.sel,limit=1] LRS_CS run tag @s add wolf.tp.sel
title @s actionbar ["\u00a76你当前的选择为：",{"selector":"@a[tag=wolf.tp.sel]"}]
execute unless entity @a[tag=wolf.tp.sel] run function minecraft:twolf/action/per/loseobjective
execute as @a[tag=wolf.tp.sel] run function minecraft:twolf/action/per/highlight
tag @a[tag=wolf.tp.sel] remove wolf.tp.sel
tag @s remove wolf.sel

