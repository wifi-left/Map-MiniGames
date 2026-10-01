##
## 宏：按索引取组名 → storage minecraft:t_says_tmp gkey
## 参数：g（组索引，0 起）
## 调用方式：function minecraft:t_says/lib/group_key with storage minecraft:t_says_tmp
##
$data modify storage minecraft:t_says_tmp gkey set from storage minecraft:t_says groups[$(g)]
