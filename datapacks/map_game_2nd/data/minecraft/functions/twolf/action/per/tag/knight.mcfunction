tag @s add wolf.sell
execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell,limit=1] park.uuid run tag @s add wolf.tp.sell
execute as @e[tag=wolf.tp.sell,limit=1] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1] {text:'["\\u00a7a\\u00a7l「骑士」 ",{"selector":"@a[tag=wolf.sell]"}]'}
tag @e[tag=wolf.tp.sell] add wolf.knight

tag @e[tag=wolf.tp.sell] remove wolf.tp.sell
# gamemode spectator
# tellraw @s ["\u00a7c你死了"]
# execute at @s run tp @s ~ -20 ~
tag @s remove wolf.sell