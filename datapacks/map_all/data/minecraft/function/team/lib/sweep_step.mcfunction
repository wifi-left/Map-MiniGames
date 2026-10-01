##
## 处理邀请键索引里的第 $(i) 项（宏：$(i) 下标）
## 由 minecraft:team/sweep 启动、并自身递归从后往前处理完整个索引
##

# 取出这一项记录的键（索引项本身可能已被清掉，那就跳过删除、只继续往前）
data modify storage minecraft:team_tmp sweep_key set value {key:""}
$execute if data storage minecraft:team invite_keys[$(i)] run data modify storage minecraft:team_tmp sweep_key.key set from storage minecraft:team invite_keys[$(i)]

# sweep_one 返回 1 = 这条索引项该丢掉（记录已不存在，或刚被判定过期并删除）
scoreboard players set tmp.team.sweep.drop board 0
execute if data storage minecraft:team_tmp sweep_key.key store result score tmp.team.sweep.drop board run function minecraft:team/lib/sweep_one with storage minecraft:team_tmp sweep_key
$execute if score tmp.team.sweep.drop board matches 1 run data remove storage minecraft:team invite_keys[$(i)]

# 继续处理前一个下标（倒序；tmp.team.sweep.i 全局共用，本层递归返回后不再使用它）
scoreboard players remove tmp.team.sweep.i board 1
execute if score tmp.team.sweep.i board matches 0.. store result storage minecraft:team_tmp sweep.i int 1 run scoreboard players get tmp.team.sweep.i board
execute if score tmp.team.sweep.i board matches 0.. run function minecraft:team/lib/sweep_step with storage minecraft:team_tmp sweep
