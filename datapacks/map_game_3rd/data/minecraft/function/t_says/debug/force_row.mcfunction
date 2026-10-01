##
## 调试：在某个组里按 id 找行（参数 gkey / i / id 都放在 minecraft:t_says_tmp）
## 找到就把 gkey / i 留在 t_says_tmp 里，交给 pick_task 去写入本局任务
##
execute if score t_says.dbg.found board matches 1 run return 0
execute if score t_says.dbg.i board >= t_says.count board run return 0

execute store result storage minecraft:t_says_tmp i int 1 run scoreboard players get t_says.dbg.i board

$execute if data storage minecraft:t_says tasks."$(gkey)"[$(i)]{id:$(id)} run scoreboard players set t_says.dbg.found board 1

scoreboard players add t_says.dbg.i board 1
function minecraft:t_says/debug/force_row with storage minecraft:t_says_tmp
