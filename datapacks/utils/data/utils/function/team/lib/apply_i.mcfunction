##
## 通用分队 API：把当前这一批人按“第 $(i) 队”的方式处理（宏：$(i) 队伍下标）
## 由 utils:team/lib/step 调用；本批人自带标签 team.batch
##

# 记入这一队的人数（供后面几轮继续挑人数最少的队）
scoreboard players set tmp.utils.cnt board 0
$execute if data storage minecraft:utils_tmp team.counts."$(i)" store result score tmp.utils.cnt board run data get storage minecraft:utils_tmp team.counts."$(i)"
scoreboard players operation tmp.utils.cnt board += tmp.utils.batch board
$execute store result storage minecraft:utils_tmp team.counts."$(i)" int 1 run scoreboard players get tmp.utils.cnt board

# 取出列表第 $(i) 项（队伍名 或 命令），按模式执行
$function utils:get_arr_idx {target:"storage minecraft:utils_tmp elem.elem",from:"storage minecraft:utils_tmp team.list",idx:$(i)}
execute if data storage minecraft:utils_tmp team{mode:0} run function utils:team/lib/apply_team with storage minecraft:utils_tmp elem
execute if data storage minecraft:utils_tmp team{mode:1} run function utils:team/lib/run_cmd_on_batch with storage minecraft:utils_tmp elem

# 分配后命令（after 为空串表示不需要）
execute unless data storage minecraft:utils_tmp team{after:""} run data modify storage minecraft:utils_tmp elem.elem set from storage minecraft:utils_tmp team.after
execute unless data storage minecraft:utils_tmp team{after:""} run function utils:team/lib/run_cmd_on_batch with storage minecraft:utils_tmp elem
