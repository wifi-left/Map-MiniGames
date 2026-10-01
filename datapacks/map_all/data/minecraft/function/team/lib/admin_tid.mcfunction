##
## 管理员队伍操作：遍历队伍编号（宏：$(tid) 当前编号）
##
## 调用方需先设置：
##   team.tid.max board       最大编号（一般 = team.count）
##   tmp.team.adminmode board 0 = 列出（打印一行，含删除按钮）／1 = 删除／2 = 无效队伍清理（全员离线才删）
##   删除模式还要准备 storage minecraft:team_tmp adminargs = {tid,who}
##
## 注意：这里用 team.tid.* 而不是 team.i / tmp.team.count ——
## 后面调用的 disband_do 内部会用 team.i 与 tmp.team.count 遍历名册，共用会被串改
##

# 列出模式
execute if score tmp.team.adminmode board matches 0 run function minecraft:team/lib/admin_row with storage minecraft:team_tmp tidloop
# 删除模式（队伍不存在就跳过，编号有空洞也不会报错）
$execute if score tmp.team.adminmode board matches 1 if data storage minecraft:team teams."$(tid)" run data modify storage minecraft:team_tmp adminargs.tid set value $(tid)
$execute if score tmp.team.adminmode board matches 1 if data storage minecraft:team teams."$(tid)" run function minecraft:team/action/disband_do with storage minecraft:team_tmp adminargs
# 无效队伍清理模式：这一队没有任何在线成员才删
$execute if score tmp.team.adminmode board matches 2 if data storage minecraft:team teams."$(tid)" run function minecraft:team/lib/dead_check with storage minecraft:team_tmp tidloop

# 下一个编号
scoreboard players add team.tid.i board 1
execute if score team.tid.i board <= team.tid.max board store result storage minecraft:team_tmp tidloop.tid int 1 run scoreboard players get team.tid.i board
execute if score team.tid.i board <= team.tid.max board run function minecraft:team/lib/admin_tid with storage minecraft:team_tmp tidloop
