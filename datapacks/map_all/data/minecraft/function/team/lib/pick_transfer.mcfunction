##
## 取出名册中第 $(i) 名成员并把队长交给他（宏：$(tid) 队伍编号、$(i) 名册索引）
##

data remove storage minecraft:team_tmp pickrow
$data modify storage minecraft:team_tmp pickrow.target set from storage minecraft:team teams."$(tid)".members[$(i)].name
execute unless data storage minecraft:team_tmp pickrow run return run tellraw @s ["§c该成员已不在队伍中，请重新打开列表。\n"]
function minecraft:team/action/transfer with storage minecraft:team_tmp pickrow
