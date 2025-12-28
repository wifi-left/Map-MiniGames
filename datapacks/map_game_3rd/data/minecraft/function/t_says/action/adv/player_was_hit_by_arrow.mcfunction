advancement revoke @s only t_says/player_was_hit_arrow
execute unless score t_says.state state matches 1 run return fail
execute if score t_says.scene board matches 20 run function minecraft:t_says/judge/give_judge/failed_spec