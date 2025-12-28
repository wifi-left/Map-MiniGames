execute as @s[tag=t_says.finished] run return fail
execute as @s[tag=t_says.failed] run return fail

execute if score t_says.type board matches 1 run function minecraft:t_says/judge/failed
execute if score t_says.type board matches 2 run function minecraft:t_says/judge/win_normal