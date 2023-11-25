tag @s add wolf.sell
execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell,limit=1] park.uuid run tag @s add wolf.tp.sell
execute as @e[tag=wolf.tp.sell,limit=1] at @s run kill @e[tag=wolf.nametags,distance=0..2]
scoreboard players reset @e[tag=wolf.tp.sell,limit=1] 
tag @e[tag=wolf.tp.sell] remove wolf.used
tag @e[tag=wolf.tp.sell] remove wolf.tp.sell
# execute at @s run tp @s ~ -20 ~
tag @s remove wolf.sell