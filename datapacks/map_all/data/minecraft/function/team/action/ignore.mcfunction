##
## 忽略邀请：静默清除，不通知邀请者（宏：$(key) 自己的 park.uuid）
##

$execute unless data storage minecraft:team invites."$(key)" run return run tellraw @s ["§c你没有待处理的组队邀请。"]
$data remove storage minecraft:team invites."$(key)"
tellraw @s ["§7你已忽略该组队邀请（对方不会收到提示）。\n"]
