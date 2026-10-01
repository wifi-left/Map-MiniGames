##
## 进入判定状态（state 1）：时限与场景搭建全部来自抽到的任务
##
scoreboard players set t_says.state state 1
scoreboard players set t_says.say board 0

# 时限（秒）：抽任务时记在 t_says.tasktime（播报阶段的倒数用的是 t_says.time，两者分开）
scoreboard players operation t_says.time board = t_says.tasktime board

# 场景搭建
function minecraft:t_says/lib/run_task_start with storage minecraft:t_says_tmp

execute as @a[team=t_says] at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 2 1
