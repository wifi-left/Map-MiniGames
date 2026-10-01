##
## 清空“我发出去的邀请”：遍历邀请键索引（宏：$(i) 索引、$(own) 我的名字）
## 删除的是邀请记录本身，索引项留给 10 秒一轮的邀请清理自行剔除
##

data remove storage minecraft:team_tmp sentkey
$data modify storage minecraft:team_tmp sentkey.key set from storage minecraft:team invite_keys[$(i)]
$data modify storage minecraft:team_tmp sentkey.own set value "$(own)"
execute if data storage minecraft:team_tmp sentkey.key run function minecraft:team/lib/clear_sent_one with storage minecraft:team_tmp sentkey

scoreboard players add tmp.team.clear.i board 1
execute if score tmp.team.clear.i board < tmp.team.clear.n board store result storage minecraft:team_tmp selfsent.i int 1 run scoreboard players get tmp.team.clear.i board
execute if score tmp.team.clear.i board < tmp.team.clear.n board run function minecraft:team/lib/clear_sent_i with storage minecraft:team_tmp selfsent
