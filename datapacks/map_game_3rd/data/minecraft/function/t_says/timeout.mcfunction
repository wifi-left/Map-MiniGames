title @a[team=t_says] actionbar [""]
scoreboard players set t_says.time board -1
execute if score t_says.state state matches 1 run return run function minecraft:t_says/round_over
execute if score t_says.state state matches 2 run return run function minecraft:t_says/summon
execute if score t_says.state state matches 3 run return run function minecraft:t_says/judge/start_judge
execute if score t_says.state state matches 4 run return run function minecraft:t_says/next_round
