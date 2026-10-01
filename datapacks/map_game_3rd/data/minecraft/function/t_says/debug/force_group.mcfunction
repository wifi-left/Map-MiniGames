##
## 调试：遍历各个组，把 t_says.dbg.g 指向的组交给 force_row 扫描
##
execute if score t_says.dbg.found board matches 1 run return 0
execute if score t_says.dbg.g board matches 7.. run return 0

execute store result storage minecraft:t_says_tmp g int 1 run scoreboard players get t_says.dbg.g board
function minecraft:t_says/lib/group_key with storage minecraft:t_says_tmp
function minecraft:t_says/lib/count_group with storage minecraft:t_says_tmp

scoreboard players set t_says.dbg.i board 0
function minecraft:t_says/debug/force_row with storage minecraft:t_says_tmp

execute if score t_says.dbg.found board matches 1 run return 0
scoreboard players add t_says.dbg.g board 1
function minecraft:t_says/debug/force_group
