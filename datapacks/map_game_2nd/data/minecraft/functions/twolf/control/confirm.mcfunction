# 确认操作
# 丘比特
execute if score @s LRS_JOB matches 1 run function minecraft:twolf/control/job/cupid/connect

# 狼
execute if score @s LRS_JOB matches 4 run function minecraft:twolf/control/job/wolf/select

# 守卫
execute if score @s LRS_JOB matches 2 run function minecraft:twolf/control/job/guard/select

# 女巫
execute if score @s LRS_JOB matches 5 run function minecraft:twolf/control/job/witch/potion

# 预言家
execute if score @s LRS_JOB matches 6 run function minecraft:twolf/control/job/predictor/select

# 纵火犯
execute if score @s LRS_JOB matches 6 run function minecraft:twolf/control/job/arsonist/select