# 获取是什么属性的角色
# 1: good; 2: bad; 3: unknown

execute if score @s LRS_JOB matches 1 if score wolf.cupid.type board matches 0 run return 2
execute if score @s LRS_JOB matches 1 unless score wolf.cupid.type board matches 0 run return 1
execute if score @s LRS_JOB matches 2 run return 1
execute if score @s LRS_JOB matches 3 run return 1
execute if score @s LRS_JOB matches 4 run return 2
execute if score @s LRS_JOB matches 5 run return 1
execute if score @s LRS_JOB matches 6 run return 1
execute if score @s LRS_JOB matches 7 run return 3
execute if score @s LRS_JOB matches 8 run return 1
execute if score @s LRS_JOB matches 9 run return 1
execute if score @s LRS_JOB matches 0 run return 1