##
## 清空“我发出去的邀请”：判断一条邀请记录是不是我发的（宏：$(key) 邀请键、$(own) 我的名字）
##

$execute if data storage minecraft:team invites."$(key)"{from:"$(own)"} run function minecraft:team/lib/invite_drop with storage minecraft:team_tmp sentkey
