##
## 无效队伍清理（每 30 秒一轮，由 team/sweep 分频调用）
##   队伍里所有成员都不在线 → 自动删除（成员状态一并清掉，回来时是“没队伍”的干净状态）
##

execute unless score team.count board matches 1.. run return 0
scoreboard players set tmp.team.adminmode board 2
scoreboard players set team.tid.i board 1
scoreboard players operation team.tid.max board = team.count board
data modify storage minecraft:team_tmp tidloop set value {tid:1}
function minecraft:team/lib/admin_tid with storage minecraft:team_tmp tidloop
