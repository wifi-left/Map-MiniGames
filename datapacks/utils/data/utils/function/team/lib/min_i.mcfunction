##
## 通用分队 API：比较第 $(i) 队的人数，记录“人数最少的那一队”（宏：$(i) 队伍下标）
## 人数记录在 storage minecraft:utils_tmp team.counts."<下标>"，键不存在按 0 算
## 由 utils:team/lib/step 启动，并自我递归到最后一队
##

scoreboard players set tmp.utils.cnt board 0
$execute if data storage minecraft:utils_tmp team.counts."$(i)" store result score tmp.utils.cnt board run data get storage minecraft:utils_tmp team.counts."$(i)"
$execute if score tmp.utils.cnt board < tmp.utils.min board run scoreboard players set tmp.utils.minidx board $(i)
execute if score tmp.utils.cnt board < tmp.utils.min board run scoreboard players operation tmp.utils.min board = tmp.utils.cnt board

# 下一个下标（tmp.utils.i 全局共用，本层递归返回后不再使用）
scoreboard players add tmp.utils.i board 1
execute if score tmp.utils.i board < tmp.utils.n board store result storage minecraft:utils_tmp idx.i int 1 run scoreboard players get tmp.utils.i board
execute if score tmp.utils.i board < tmp.utils.n board run function utils:team/lib/min_i with storage minecraft:utils_tmp idx
