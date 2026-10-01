##
## 队长退出：把队长交给下一名成员；没有其他成员则解散队伍（宏：$(tid)、$(name)）
##

# 查找下一名可接任的成员（第一个非队长成员）
data remove storage minecraft:team_tmp next
scoreboard players set tmp.team.count board 0
$execute store result score tmp.team.count board run data get storage minecraft:team teams."$(tid)".members
scoreboard players set team.i board 0
$data modify storage minecraft:team_tmp loop set value {tid:"$(tid)",i:0}
function minecraft:team/lib/next_member_loop with storage minecraft:team_tmp loop

# 有人接任 → 移交队长，然后把自己移出队伍
execute if data storage minecraft:team_tmp next run function minecraft:team/lib/set_next_tid
execute if data storage minecraft:team_tmp next run function minecraft:team/action/transfer_do with storage minecraft:team_tmp next
execute if data storage minecraft:team_tmp next run function minecraft:team/action/leave_member_do with storage minecraft:team_tmp args

# 没有其他成员 → 解散队伍（disband_do 需要 $(who)）
execute unless data storage minecraft:team_tmp next run data modify storage minecraft:team_tmp args.who set value "队长"
execute unless data storage minecraft:team_tmp next run function minecraft:team/action/disband_do with storage minecraft:team_tmp args
