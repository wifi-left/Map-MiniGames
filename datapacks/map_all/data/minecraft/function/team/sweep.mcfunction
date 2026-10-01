##
## 组队周期清理（由 map_main/second.mcfunction 每秒调用）
##   1) 邀请清理：内部按 team.sweep 分频，每 10 秒跑一轮
##   2) 无效队伍清理：内部按 team.sweep.dead 分频，每 30 秒跑一轮（队伍里所有成员都不在线 → 删除）
##
## 为什么分频：全量扫描没必要每秒做，10 秒 / 30 秒一轮既能及时回收，也不会每秒占性能。
## 邀请清理遍历的是邀请键索引 invite_keys（每次发邀请时登记，避免去枚举 invites 的键）：
##   · 记录已经不在（对方已接受 / 拒绝 / 忽略）→ 只把索引项丢掉
##   · 记录仍然有效 → 保留
##   · 记录已经过期 → 通知邀请者“可以再次邀请”、提示被邀请者（在线才会收到）、删除记录与索引项
## 因此 park.uuid 变动（重进 / 重置 / 换名字）留下的“孤儿邀请”也会在这里被清掉，不会永久残留。
##

# 兜底：有效期与索引缺失时补上（正常情况下由 team/setup.mcfunction 初始化）
execute unless score team.expiry board matches 1.. run scoreboard players set team.expiry board 60
execute unless data storage minecraft:team invite_keys run data modify storage minecraft:team invite_keys set value []

# 无效队伍清理：每秒 +1，满 30 归零，只有归零的这一秒才跑（放在下面的 10 秒清理之前，避免被 return 掉）
scoreboard players add team.sweep.dead board 1
execute if score team.sweep.dead board matches 30.. run scoreboard players set team.sweep.dead board 0
execute if score team.sweep.dead board matches 0 run function minecraft:team/sweep_dead

# 邀请清理分频：每秒 +1，满 10 归零；只有归零的这一秒才继续往下做清理
scoreboard players add team.sweep board 1
execute if score team.sweep board matches 10.. run scoreboard players set team.sweep board 0
execute unless score team.sweep board matches 0 run return 0

# 从最后一个下标往前处理：删除元素会让后面的元素前移，倒序不会漏检
scoreboard players set tmp.team.sweep.n board 0
execute store result score tmp.team.sweep.n board run data get storage minecraft:team invite_keys
execute unless score tmp.team.sweep.n board matches 1.. run return 0
scoreboard players operation tmp.team.sweep.i board = tmp.team.sweep.n board
scoreboard players remove tmp.team.sweep.i board 1
data modify storage minecraft:team_tmp sweep set value {i:0}
execute store result storage minecraft:team_tmp sweep.i int 1 run scoreboard players get tmp.team.sweep.i board
function minecraft:team/lib/sweep_step with storage minecraft:team_tmp sweep
