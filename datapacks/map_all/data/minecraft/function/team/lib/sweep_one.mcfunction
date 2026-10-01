##
## 检查一条邀请记录（宏：$(key) 邀请键 = 被邀请者的 park.uuid）
## 返回值：1 = 这条索引项应该被丢弃（记录已不存在，或已过期并被删除）；0 = 记录仍然有效，保留
##

# 记录不在（已被接受 / 拒绝 / 忽略，或旧版遗留字段异常）→ 只让调用方丢掉索引项
$execute unless data storage minecraft:team invites."$(key)" run return 1

scoreboard players set tmp.team.expires board 0
$execute store result score tmp.team.expires board run data get storage minecraft:team invites."$(key)".expires
scoreboard players operation tmp.team.now board = team.clock board
execute if score tmp.team.expires board > tmp.team.now board run return 0

# 已过期：取出记录（含 from / name）→ 通知邀请者 → 提示被邀请者（在线才会收到）→ 删除记录
$data modify storage minecraft:team_tmp sweepmsg set from storage minecraft:team invites."$(key)"
$data remove storage minecraft:team invites."$(key)"
$tellraw @a[scores={park.uuid=$(key)}] ["§7你收到的一条组队邀请已过期。\n"]
function minecraft:team/lib/sweep_notify with storage minecraft:team_tmp sweepmsg

# 邀请过期后，如果那支队伍里只剩队长一人（通常就是为这次邀请刚建的队），同样解散
data remove storage minecraft:team_tmp survivor_tid
data modify storage minecraft:team_tmp survivor_tid.tid set from storage minecraft:team_tmp sweepmsg.team
function minecraft:team/lib/check_survivor with storage minecraft:team_tmp survivor_tid
return 1
