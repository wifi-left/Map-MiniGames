execute as @s[tag=t_says.finished] run return fail
execute as @s[tag=t_says.failed] run return fail

execute if score t_says.scene board matches 3 run return run function minecraft:t_says/judge/give_judge/finish_all
execute if score t_says.scene board matches 5 run return run function minecraft:t_says/judge/give_judge/finish_all
execute if score t_says.scene board matches 7 run return run function minecraft:t_says/judge/give_judge/finish_all
execute if score t_says.scene board matches 20 run return run function minecraft:t_says/judge/give_judge/finish_all


execute if score t_says.type board matches 1 run function minecraft:t_says/judge/win_all
execute if score t_says.type board matches 2 run function minecraft:t_says/judge/failed