## 扔鸡蛋：id 60 用对 → 完成；其余情况（用了别的物品，或 id 67「别扔鸡蛋」扔了鸡蛋）
## 一律走 minecraft:t_says/judge/give_judge/failed，也就是"做了与台词相反的事"，再由"T氏说"反过来判成败
## （与 scene/judging/wear_item 里"穿错胸甲"完全同一种写法）
execute unless score t_says.state state matches 1 run return fail

execute if score t_says.scene board matches 60 run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 60..67 run function minecraft:t_says/judge/give_judge/failed
