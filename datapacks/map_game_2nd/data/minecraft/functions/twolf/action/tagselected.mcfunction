tag @s add wolf.sel
tag @a remove wolf.selected
execute as @a[team=wolfpeople,gamemode=adventure] if score @s park.uuid = @a[tag=wolf.sel,limit=1] LRS_CS run tag @s add wolf.tp.sel
title @s actionbar ["\u00a76你当前的选择为：",{"selector":"@a[tag=wolf.tp.sel]"}]
execute unless entity @a[tag=wolf.tp.sel] run function minecraft:twolf/action/per/loseobjective
execute as @a[tag=wolf.tp.sel] run tag @s add wolf.selected
tag @a[tag=wolf.tp.sel] remove wolf.tp.sel
tag @s remove wolf.sel