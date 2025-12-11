tag @s add sel
execute as @e[tag=merchant.npc,type=armor_stand] if score @s park.uuid = @a[tag=sel,limit=1] park.uuid run tag @s add merchant.sel
tag @s remove sel