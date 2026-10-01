##
## 抽取本局任务：正/反（"T氏说"）+ 从任务表里抽一行
##
## 任务表：storage minecraft:t_says（见 t_says/tasks/setup.mcfunction）
## 抽取规则：分组均衡 —— 先等概率抽组，再在组内等概率抽行
##

## T or not T：1 = 有"T氏说"（要反做）；2 = 没有（要正做）
execute store result score t_says.type board run random value 1..2

## 1) 抽组（※ 这里的 1..7 必须与 tasks/setup 里 groups 列表的长度一致）
execute store result score t_says.g board run random value 1..7
scoreboard players remove t_says.g board 1
execute store result storage minecraft:t_says_tmp g int 1 run scoreboard players get t_says.g board
function minecraft:t_says/lib/group_key with storage minecraft:t_says_tmp

## 2) 组内任务数量
function minecraft:t_says/lib/count_group with storage minecraft:t_says_tmp

## 3) 组内索引（random value 不支持变量边界，用取模得到 0..数量-1）
execute store result score t_says.i board run random value 0..999983
scoreboard players operation t_says.i board %= t_says.count board
execute store result storage minecraft:t_says_tmp i int 1 run scoreboard players get t_says.i board

## 4) 写入本局任务：场景编号 / 时限 / 文案 / 搭建与判定函数（时限由 start_judge 取用）
function minecraft:t_says/lib/pick_task with storage minecraft:t_says_tmp
