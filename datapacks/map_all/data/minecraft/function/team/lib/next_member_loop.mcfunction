##
## 查找下一名可接任队长的成员（第一个非队长成员），结果写入 storage minecraft:team_tmp next（宏：$(tid)、$(i)）
## 调用方需先设置 tmp.team.count board = 名册长度、team.i board = 0，并清掉 storage minecraft:team_tmp next
##
## 注意与 lib/remove_member 相同：先把第 $(i) 项拷到 row，再对 row 用谓词判断。
## 早期这里写的是“下标后直接接谓词”（members[下标]{leader:0b}），这种写法仓库里没有先例、疑似不生效，
## 后果是队长退出时找不到接任者、队伍被直接解散。
##

data remove storage minecraft:team_tmp row
$data modify storage minecraft:team_tmp row set from storage minecraft:team teams."$(tid)".members[$(i)]
execute if data storage minecraft:team_tmp row{leader:0b} unless data storage minecraft:team_tmp next run data modify storage minecraft:team_tmp next set from storage minecraft:team_tmp row
scoreboard players add team.i board 1
execute store result storage minecraft:team_tmp loop.i int 1 run scoreboard players get team.i board
execute if score team.i board < tmp.team.count board run function minecraft:team/lib/next_member_loop with storage minecraft:team_tmp loop
