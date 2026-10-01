##
## 宏：统计某个组里的任务数量 → t_says.count
## 参数：gkey（组名）
## 调用方式：function minecraft:t_says/lib/count_group with storage minecraft:t_says_tmp
##
$execute store result score t_says.count board run data get storage minecraft:t_says tasks."$(gkey)"
