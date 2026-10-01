## 站在指定方块上（id 70..77）
## 站到干扰格（terracotta）上不算完成，也不算失败
execute if score t_says.scene board matches 70 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ ice run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 71 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ blue_ice run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 72 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ iron_block run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 73 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ gold_block run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 74 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ hay_block run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 75 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ emerald_block run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 76 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ magma_block run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 77 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if block ~ ~-1 ~ anvil run function minecraft:t_says/judge/give_judge/finish
