execute unless score t_says.state state matches 1 run return fail
execute if score t_says.scene board matches 6 run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 7 run function minecraft:t_says/judge/give_judge/failed