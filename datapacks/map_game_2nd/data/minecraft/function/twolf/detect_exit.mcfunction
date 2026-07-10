tag @s add wolf.sell2
# execute if score @s LRS_JOB matches 9 run function minecraft:twolf/action/per/death/hunter/trigger
# execute if score @s LRS_JOB matches 9 run return 0
execute as @a[team=wolfpeople] if score @s park.uuid = @e[tag=wolf.sell2,limit=1] LRS_UUID run tag @s add wolf.tp.sell1
tag @s remove wolf.sell2
execute unless entity @a[tag=wolf.tp.sell1] as @s at @s run function minecraft:twolf/action/per/death/died_exit
tag @a[tag=wolf.tp.sell1] remove wolf.tp.sell1