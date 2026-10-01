##
## 清除邀请并通知队长（宏：$(key) 被邀请者 park.uuid、$(team) 队伍编号、$(name) 拒绝者名字）
##

$data remove storage minecraft:team invites."$(key)"
$tellraw @a[scores={team.id=$(team),team.role=1}] ["\n§6[队伍] §e玩家 §b$(name)§e 拒绝了你的邀请。\n"]
tellraw @s ["§7你已拒绝该组队邀请。\n"]
