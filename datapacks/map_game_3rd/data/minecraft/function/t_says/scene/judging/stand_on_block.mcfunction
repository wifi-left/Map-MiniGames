

execute if score t_says.scene board matches -20 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ yellow_concrete run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -19 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ red_concrete run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -18 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ white_concrete run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -17 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ light_blue_concrete run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -16 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ blue_concrete run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -15 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ lime_concrete run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -14 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ green_concrete run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -13 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ black_concrete run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -12 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ pink_concrete run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -11 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ brown_concrete run function minecraft:t_says/judge/give_judge/finish

execute as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ #concrete run function minecraft:t_says/judge/give_judge/failed
