## 戴上某种头盔（id 40..43）
execute if score t_says.scene board matches 40 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.head golden_helmet run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 41 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.head iron_helmet run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 42 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.head diamond_helmet run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 43 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.head netherite_helmet run function minecraft:t_says/judge/give_judge/finish

## 戴了不是要求的头盔 → 失败
execute if score t_says.scene board matches 40..43 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s armor.head * run function minecraft:t_says/judge/give_judge/failed
