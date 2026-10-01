##
## 队伍只剩一名成员时自动解散（宏：$(tid) 队伍编号）
## 调用点：成员退出 / 队长移出成员 / 队长退出移交后（名册只剩 1 人），以及邀请过期后（那支队伍通常就是为这次邀请建的）
##

data remove storage minecraft:team_tmp survivor
$data modify storage minecraft:team_tmp survivor set from storage minecraft:team teams."$(tid)"
execute unless data storage minecraft:team_tmp survivor run return 0

scoreboard players set tmp.team.survivor board 0
execute store result score tmp.team.survivor board run data get storage minecraft:team_tmp survivor.members
execute unless score tmp.team.survivor board matches 1 run return 0

$tellraw @a[scores={team.id=$(tid)}] ["\n§7队伍里只剩你一名成员，已自动解散队伍。\n"]
data modify storage minecraft:team_tmp adminargs set value {tid:0,who:"系统"}
$data modify storage minecraft:team_tmp adminargs.tid set value $(tid)
function minecraft:team/action/disband_do with storage minecraft:team_tmp adminargs
