##
## 邀请记录：删掉一条（宏：$(key) 邀请键 = 被邀请者的 park.uuid）
## 存在才计数（供调用方判断“要不要提示玩家”），索引项由 10 秒一轮的邀请清理自行剔除
##

$execute if data storage minecraft:team invites."$(key)" run scoreboard players add tmp.team.clear.hit board 1
$data remove storage minecraft:team invites."$(key)"
