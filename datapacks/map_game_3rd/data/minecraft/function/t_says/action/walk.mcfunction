
execute unless score t_says.state state matches 1 run return fail
execute if score t_says.scene board matches 4 run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 5 run function minecraft:t_says/judge/give_judge/failed