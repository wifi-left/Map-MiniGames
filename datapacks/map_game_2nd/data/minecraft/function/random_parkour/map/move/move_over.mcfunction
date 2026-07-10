execute as @e[type=marker,tag=random_parkour.move] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 lapis_block
execute as @e[type=marker,tag=random_parkour.move] at @s run fill ~-2 ~ ~-1 ~-2 ~ ~1 ladder[facing=west] replace air strict
execute as @e[type=marker,tag=random_parkour.move] at @s run fill ~2 ~ ~-1 ~2 ~ ~1 ladder[facing=east] replace air strict
execute as @e[type=marker,tag=random_parkour.move] at @s run fill ~-1 ~ ~-2 ~1 ~ ~-2 ladder[facing=north] replace air strict
execute as @e[type=marker,tag=random_parkour.move] at @s run fill ~-1 ~ ~2 ~1 ~ ~2 ladder[facing=south] replace air strict
kill @e[type=marker,tag=random_parkour.move]