execute as @s[tag=t_says.finished] run return fail
execute as @s[tag=t_says.failed] run return fail

# 否定句场景（任务表里 opts:{timeout:"all"}）：时限到了还"什么都没做"的玩家算完成
execute if score t_says.timeout board matches 1 run return run function minecraft:t_says/judge/give_judge/finish_all

execute if score t_says.type board matches 1 run function minecraft:t_says/judge/win_all
execute if score t_says.type board matches 2 run function minecraft:t_says/judge/failed
