## 放方块：id 66 用对 → 完成；其余使用类任务里用错物品 → 走反向判定，由"T氏说"决定成败
execute unless score t_says.state state matches 1 run return fail

execute if score t_says.scene board matches 66 run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 60..67 run function minecraft:t_says/judge/give_judge/failed
