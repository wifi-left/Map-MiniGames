# 玩家相拥
execute as @a[team=t_says,gamemode=adventure] at @s if entity @a[team=t_says,distance=0.1..1,gamemode=adventure] run function minecraft:t_says/judge/give_judge/finish