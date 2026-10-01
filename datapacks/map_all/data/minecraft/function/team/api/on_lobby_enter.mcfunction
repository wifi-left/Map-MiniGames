##
## 回到大厅时检查组队状态（以“刚回到大厅的玩家”为执行者调用）
## 调用点：map_main 的 lobby/lobby_enter（登录进图、退出游戏回大厅）与 lobby/tick（/trigger hub 回大厅）
##   1. 队伍记录不存在 / 自己的身份不正常 → 重置组队状态（不正常的组队状态直接清掉）
##   2. 自己是队长，且名册里还有其他成员、但他们都不在线 → 解散这支无效队伍
##

execute unless score @s team.id matches 1.. run return 0
data modify storage minecraft:team_tmp lobbycheck set value {tid:0}
execute store result storage minecraft:team_tmp lobbycheck.tid int 1 run scoreboard players get @s team.id
function minecraft:team/action/check_rejoin with storage minecraft:team_tmp lobbycheck
