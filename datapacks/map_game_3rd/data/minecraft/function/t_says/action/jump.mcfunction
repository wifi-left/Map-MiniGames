execute unless score t_says.state state matches 1 run return fail
execute if score t_says.scene board matches 2 run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 3 run function minecraft:t_says/judge/give_judge/failed