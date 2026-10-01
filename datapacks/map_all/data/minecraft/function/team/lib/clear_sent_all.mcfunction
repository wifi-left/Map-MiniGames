##
## 清空“我发出去的邀请”的入口（宏：$(name) 我的名字；由 team/api/clear_invites_self 调用）
## 只是把名字与下标包好，然后逐个遍历邀请键索引（真正判断与删除在 clear_sent_i / clear_sent_one）
##

scoreboard players set tmp.team.clear.i board 0
data modify storage minecraft:team_tmp selfsent set value {i:0,own:""}
$data modify storage minecraft:team_tmp selfsent.own set value "$(name)"
function minecraft:team/lib/clear_sent_i with storage minecraft:team_tmp selfsent
