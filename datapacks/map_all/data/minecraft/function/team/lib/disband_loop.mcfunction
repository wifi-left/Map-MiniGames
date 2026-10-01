##
## 解散队伍：遍历暂存的成员名册（宏：$(i)）
## 调用方需先暂存 storage minecraft:team_tmp disband，并设置 tmp.team.count board 与 team.i board
##

data remove storage minecraft:team_tmp row
$data modify storage minecraft:team_tmp row set from storage minecraft:team_tmp disband.members[$(i)]
execute if data storage minecraft:team_tmp row run function minecraft:team/lib/disband_member with storage minecraft:team_tmp row
scoreboard players add team.i board 1
execute store result storage minecraft:team_tmp loop.i int 1 run scoreboard players get team.i board
execute if score team.i board < tmp.team.count board run function minecraft:team/lib/disband_loop with storage minecraft:team_tmp loop
