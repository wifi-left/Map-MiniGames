tag @s add wolf.sell
execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell,limit=1] park.uuid run tag @s add wolf.tp.sell
tp @s @e[tag=wolf.tp.sell,limit=1]
# execute at @s run tp @s ~ -20 ~
tag @e[tag=wolf.tp.sell] remove wolf.tp.sell
tag @s remove wolf.sell