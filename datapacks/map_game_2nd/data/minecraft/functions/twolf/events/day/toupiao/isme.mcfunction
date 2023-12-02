# execute if entity @a[tag=wolf.out] run return 0 
execute if score @s LRS_ZT = wolf.highest.score board run tag @s add wolf.out
execute if score @s LRS_ZT = wolf.highest.score board run scoreboard players add wolf.tmp board 1
