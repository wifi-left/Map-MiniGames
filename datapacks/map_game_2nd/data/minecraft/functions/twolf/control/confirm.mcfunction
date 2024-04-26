# 确认操作
# 丘比特
execute if score wolf.event board matches 1..7 if score @s LRS_JOB matches 1 run function minecraft:twolf/control/job/cupid/connect

# 狼
execute if score wolf.event board matches 1..7 unless score wolf.event board matches 11 if score @s LRS_JOB matches 4 run function minecraft:twolf/control/job/wolf/select

# 守卫
execute if score wolf.event board matches 1..7 if score @s LRS_JOB matches 2 run function minecraft:twolf/control/job/guard/select

# 女巫
execute if score wolf.event board matches 1..7 if score @s LRS_JOB matches 5 run function minecraft:twolf/control/job/witch/potion

# 预言家
execute if score wolf.event board matches 1..7 if score @s LRS_JOB matches 6 run function minecraft:twolf/control/job/predictor/select

# 纵火犯
execute if score wolf.event board matches 1..7 if score @s LRS_JOB matches 3 run function minecraft:twolf/control/job/arsonist/select

# 猎人
execute if score wolf.event board matches 12 if score @s LRS_JOB matches 9 run function minecraft:twolf/control/job/hunter/select

# 白狼
execute if score wolf.event board matches 11 if score @s LRS_JOB matches 4 run function minecraft:twolf/control/job/whitewolf/select
# 骑士
execute if score wolf.event board matches 11 if score @s LRS_JOB matches 8 run function minecraft:twolf/control/job/knight/select

# 投票
execute if score wolf.event board matches 10 run function minecraft:twolf/control/day/select
