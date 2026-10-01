##
## 以 @s 身份执行：分数等于当前最高分则标记（同分并列）
##

execute if score @s score = total.rank.max board run tag @s add total.rank.found
