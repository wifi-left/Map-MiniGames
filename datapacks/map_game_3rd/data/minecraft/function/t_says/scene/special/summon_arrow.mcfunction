summon marker ~ ~ ~ {Tags:["t_says.tmp"]}
execute at @s as @e[tag=t_says.tmp,type=marker] run spreadplayers ~ ~ 0 8 under 22 false @s
execute as @e[tag=t_says.tmp,type=marker] at @s run summon arrow ~ ~15 ~
kill @e[tag=t_says.tmp,type=marker]

summon marker ~ ~ ~ {Tags:["t_says.tmp"]}
execute at @s as @e[tag=t_says.tmp,type=marker] run spreadplayers ~ ~ 0 4 under 22 false @s
execute as @e[tag=t_says.tmp,type=marker] at @s run summon arrow ~ ~15 ~
kill @e[tag=t_says.tmp,type=marker]