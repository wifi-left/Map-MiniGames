tag @s add wolf.sel
execute as @a[team=wolfpeople,gamemode=adventure] if score @s park.uuid = @a[tag=wolf.sel,limit=1] LRS_CS run tag @s add wolf.selected
tag @s remove wolf.sel