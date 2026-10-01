## 远离所有玩家（id 82）：4 格内没有其他玩家即完成
## 场上至少还要有第二名玩家，避免单人局白送
execute if score t_says.scene board matches 82 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s if entity @a[team=t_says,gamemode=adventure,distance=0.1..] unless entity @a[team=t_says,gamemode=adventure,distance=0.1..4] run function minecraft:t_says/judge/give_judge/finish
