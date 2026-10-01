##
## 宏：把抽到的任务写入当前局面
## 参数：gkey（组名）、i（组内索引）——都在 minecraft:t_says_tmp 里
## 调用方式：function minecraft:t_says/lib/pick_task with storage minecraft:t_says_tmp
##
## 写入内容：
##   t_says.scene   本任务 id        t_says.tasktime 本任务时限（秒）
##   t_says.timeout 0/1（时限到了"什么都没做"的人算完成）
##   minecraft:temp t_says.msg      任务文案（show_msg 用 interpret 显示）
##   minecraft:t_says_tmp start/judge  搭建与判定函数名（供宏调用）
##
## ※ data modify 的目标路径是必填的（省略目标路径是无效语法、整个函数会加载失败），
##   所以这里每个写入都落到具体键上，不做"整行搬运"
##
scoreboard players set t_says.scene board 0
scoreboard players set t_says.timeout board 0

$execute store result score t_says.scene board run data get storage minecraft:t_says tasks."$(gkey)"[$(i)].id
$execute store result score t_says.tasktime board run data get storage minecraft:t_says tasks."$(gkey)"[$(i)].time
$data modify storage minecraft:temp t_says.msg set from storage minecraft:t_says tasks."$(gkey)"[$(i)].msg
$data modify storage minecraft:t_says_tmp start set from storage minecraft:t_says tasks."$(gkey)"[$(i)].start
$data modify storage minecraft:t_says_tmp judge set from storage minecraft:t_says tasks."$(gkey)"[$(i)].judge

$execute if data storage minecraft:t_says tasks."$(gkey)"[$(i)].opts.timeout run scoreboard players set t_says.timeout board 1
