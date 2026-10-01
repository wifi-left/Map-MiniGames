##
## 名册：按名字删掉第一个匹配的条目（宏：$(tid) 队伍编号、$(i) 起始下标、$(name) 名字）
## 调用方需先设置 tmp.team.count board = 名册长度、team.i board = 0，
## 并把参数包写进 storage minecraft:team_tmp rm（{tid,i,name}）
##
## 为什么先把第 $(i) 项拷到 row 再判断：本仓库里被验证过的写法是“对拷出来的复合标签用谓词”（row{name:"..."}），
## 而“下标后面直接接谓词”（members[下标]{...}）没有先例 —— 早期这里就是这么写的，疑似不生效导致名册删不掉
##

data remove storage minecraft:team_tmp row
$data modify storage minecraft:team_tmp row set from storage minecraft:team teams."$(tid)".members[$(i)]
$execute if data storage minecraft:team_tmp row{name:"$(name)"} run data remove storage minecraft:team teams."$(tid)".members[$(i)]
# 删到一个就够了：删掉后 row 里仍带着同一个名字，据此判断“已删”直接结束，
# 否则继续扫描会因为元素前移而漏掉下一项
$execute if data storage minecraft:team_tmp row{name:"$(name)"} run return 0
scoreboard players add team.i board 1
execute if score team.i board < tmp.team.count board store result storage minecraft:team_tmp rm.i int 1 run scoreboard players get team.i board
execute if score team.i board < tmp.team.count board run function minecraft:team/lib/remove_member with storage minecraft:team_tmp rm
