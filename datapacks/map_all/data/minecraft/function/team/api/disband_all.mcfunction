##
## 管理员 API：删除全部队伍（逐支解散并通知成员），同时作废所有待处理邀请
## 用法：/function minecraft:team/api/disband_all
##
## 只删除队伍与邀请，不动 team.count 以外的其它数据；要连缓存一起清用 team/api/clear_cache
##

data modify storage minecraft:team_tmp adminargs set value {tid:0,who:"管理员"}
scoreboard players set tmp.team.adminmode board 1
scoreboard players set team.tid.i board 1
scoreboard players operation team.tid.max board = team.count board
data modify storage minecraft:team_tmp tidloop set value {tid:1}
function minecraft:team/lib/admin_tid with storage minecraft:team_tmp tidloop

# 待处理邀请全部作废（队伍都没了，邀请也就没意义了，不清理会留下孤儿记录）
data remove storage minecraft:team invites
execute unless data storage minecraft:team invites run data modify storage minecraft:team invites set value {}
data remove storage minecraft:team invite_keys
execute unless data storage minecraft:team invite_keys run data modify storage minecraft:team invite_keys set value []

# 编号计数器归 1（队伍已经全部删除）
scoreboard players set team.count board 1

tellraw @s ["§a已删除全部队伍，成员已全部移出，待处理邀请也已作废。\n"]
