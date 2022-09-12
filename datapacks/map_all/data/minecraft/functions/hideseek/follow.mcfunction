tag @s add seel
execute as @e[tag=hide.animals,tag=hide.cosplay] if score @s LRS_START_DJS = @a[tag=seel,limit=1] park.uuid run tag @s add shouldtp 
tag @s remove seel
# tp @e[tag=shouldtp] @s
execute unless entity @e[tag=shouldtp,limit=1] run function hideseek/during/anidied
data modify entity @e[tag=shouldtp,limit=1] Motion set from entity @s Motion
data modify entity @e[tag=shouldtp,limit=1] Pos set from entity @s Pos
data modify entity @e[tag=shouldtp,limit=1] Rotation[0] set from entity @s Rotation[0]
tag @e[tag=shouldtp] remove shouldtp

