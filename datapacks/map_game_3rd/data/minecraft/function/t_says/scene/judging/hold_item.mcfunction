## 手持指定物品（id 50..52）：主手 / 副手
execute if score t_says.scene board matches 50 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s weapon.mainhand wooden_sword run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 51 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s weapon.mainhand diamond_sword run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 52 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s weapon.offhand shield run function minecraft:t_says/judge/give_judge/finish
