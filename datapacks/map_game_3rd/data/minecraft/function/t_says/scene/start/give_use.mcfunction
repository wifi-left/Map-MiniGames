##
## 使用类任务（id 60..67）：一次性把所有物品都发下去
## 判定规则：用对当前任务要的物品 = 完成；用了别的物品 = 失败
## （判定在 t_says/action/use_*.mcfunction：用对 → 完成，用错 → give_judge/failed 交给"T氏说"反过来判）
##
execute as @a[team=t_says,gamemode=adventure] run function minecraft:t_says/scene/special/give_use
