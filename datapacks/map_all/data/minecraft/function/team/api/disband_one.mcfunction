##
## 管理员 API：删除指定编号的队伍（宏：$(tid) 队伍编号）
## 用法：/function minecraft:team/api/disband_one {tid:2}
##
## 队伍编号可以用 /function minecraft:team/api/admin_list 查（会列出所有队伍）
## 成员会被移出队伍（含离线成员），并且会收到提示
##

$execute unless data storage minecraft:team teams."$(tid)" run return run tellraw @s ["§c没有编号为 $(tid) 的队伍。\n"]
data modify storage minecraft:team_tmp adminargs set value {tid:0,who:"管理员"}
$data modify storage minecraft:team_tmp adminargs.tid set value $(tid)
function minecraft:team/action/disband_do with storage minecraft:team_tmp adminargs
$tellraw @s ["§a已删除队伍 §e#$(tid)§a，成员已全部移出。\n"]
