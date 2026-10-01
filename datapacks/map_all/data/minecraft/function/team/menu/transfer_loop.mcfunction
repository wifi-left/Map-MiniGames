##
## 转移队长：循环追加成员行（宏：$(tid)、$(i)）
##

data remove storage minecraft:team_tmp row
$data modify storage minecraft:team_tmp row set from storage minecraft:team teams."$(tid)".members[$(i)]
# 该行的触发值 = 名册索引 + 1（点击后由 trigger/transfer_pick 减 1 还原；
# +1 是为了避开 scoreboard players enable 给每个玩家建出的 0 分）
execute store result score tmp.team.code board run scoreboard players get team.i board
scoreboard players add tmp.team.code board 1
execute if data storage minecraft:team_tmp row run execute store result storage minecraft:team_tmp row.code int 1 run scoreboard players get tmp.team.code board
execute if data storage minecraft:team_tmp row run function minecraft:team/menu/transfer_row with storage minecraft:team_tmp row
scoreboard players add team.i board 1
execute store result storage minecraft:team_tmp loop.i int 1 run scoreboard players get team.i board
execute if score team.i board < tmp.team.count board run function minecraft:team/menu/transfer_loop with storage minecraft:team_tmp loop
