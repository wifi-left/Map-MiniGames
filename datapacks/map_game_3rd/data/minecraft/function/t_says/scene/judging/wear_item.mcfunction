
execute if score t_says.scene board matches -10 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.chest golden_chestplate run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -9 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.chest iron_chestplate run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -8 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.chest leather_chestplate run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -7 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.chest chainmail_chestplate run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -6 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.chest copper_chestplate run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -5 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.chest diamond_chestplate run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches -4 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.chest netherite_chestplate run function minecraft:t_says/judge/give_judge/finish

execute as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.chest * run function minecraft:t_says/judge/give_judge/failed
