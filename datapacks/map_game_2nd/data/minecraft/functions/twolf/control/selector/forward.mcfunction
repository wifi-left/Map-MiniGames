scoreboard players remove @s PSTJ 1
tp @s ^ ^ ^1
tag @e[tag=wolf.used,distance=0..0.8,limit=1] add wolf.ptdmarker
# execute as @e[tag=wolf.used,distance=0..0.8,limit=1] run say hi
execute as @a[team=wolfpeople,gamemode=adventure] if score @s park.uuid = @e[limit=1,tag=wolf.ptdmarker] LRS_UUID run tag @s add wolf.pointed
# tag @a[distance=0..0.8,team=wolfpeople,gamemode=adventure] add wolf.pointed
tag @e[tag=wolf.ptdmarker] remove wolf.ptdmarker
execute at @s if entity @e[tag=wolf.pointed] run return 0
# execute at @s run particle dust 0 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute at @s if score @s PSTJ matches 1.. run function minecraft:twolf/control/selector/forward 