tag @s add seel
execute as @e[tag=hide.animals,tag=hide.cosplay] if score @s LRS_START_DJS = @a[tag=seel,limit=1] park.uuid run tag @s add shouldtp
tag @s remove seel
# tp @e[tag=shouldtp] @s
execute unless entity @e[tag=shouldtp,limit=1] run function hideseek/changeanimal
execute as @s[tag=action.sneaking] at @s align xyz as @e[tag=shouldtp,limit=1] run tp @s ~ ~ ~
execute as @s[tag=!action.sneaking] at @s positioned ~-0.5 ~ ~-0.5 as @e[tag=shouldtp,limit=1] run tp @s ~ ~ ~
tag @e[tag=shouldtp] remove shouldtp

