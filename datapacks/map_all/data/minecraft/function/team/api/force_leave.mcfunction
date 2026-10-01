##
## 管理员：强制某位玩家退出所在队伍
##
## 用法：/function minecraft:team/api/force_leave {player:"bot1"}
##
## 说明：按名字走正常退出流程（队长会先把队长移交给下一名成员），目标需要在线
##

$execute unless entity @a[name="$(player)"] run return run tellraw @s ["§c该玩家必须在线（强制退队要走正常退出流程，包含队长移交）。\n"]
$execute unless score $(player) team.id matches 1.. run return run tellraw @s ["§c$(player) 不在任何队伍中。\n"]

data modify storage minecraft:team_tmp force set value {tid:0,name:""}
$execute store result storage minecraft:team_tmp force.tid int 1 run scoreboard players get $(player) team.id
$data modify storage minecraft:team_tmp force.name set value "$(player)"

# 队长：以自己的身份走队长退出流程（移交队长后再走人）
$execute if score $(player) team.role matches 1 as @a[name="$(player)"] run function minecraft:team/action/leave_leader_do with storage minecraft:team_tmp force
# 队员：按名字直接移出
$execute if score $(player) team.role matches 2 run function minecraft:team/action/leave_member_do with storage minecraft:team_tmp force

$tellraw @s ["§a已让 §b$(player)§a 退出队伍。\n"]
