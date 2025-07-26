execute at @s align xyz run summon block_display ~ ~ ~ {Invulnerable:1b,Tags:["hide.animals","neww"],block_state:{Name:"minecraft:grass_block"}}
tag @s add seel
execute as @e[tag=hide.animals,tag=hide.cosplay] if score @s LRS_START_DJS = @a[tag=seel,limit=1] park.uuid run tag @s add shouldtp
tag @s remove seel
execute as @e[tag=neww] run data modify entity @s block_state.Name set from entity @e[tag=shouldtp,limit=1] block_state.Name
tag @e[tag=neww] remove neww
tag @e[tag=shouldtp] remove shouldtp