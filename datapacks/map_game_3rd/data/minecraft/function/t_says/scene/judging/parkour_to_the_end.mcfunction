execute as @a[team=t_says,gamemode=adventure] at @s if block ~ ~ ~ lava run function minecraft:t_says/judge/failed_spec
execute as @a[team=t_says,gamemode=adventure] at @s if block ~ ~-1 ~ diamond_block run function minecraft:t_says/judge/give_judge/finish_spec
effect give @a[team=t_says,gamemode=adventure] invisibility 2 25 true