##
## 组队系统入口：为“执行者”打开组队对话框
##
## 用法：
##   /function team/open                        打开自己的组队菜单（/function 权限等级为 2，需 OP）
##   /execute as <玩家> run function team/open   给别人打开（管理员 / 命令方块 / 其它函数调用）
## 玩家自助入口：/trigger team（所有玩家可用，等效于 /trigger team set 1，无需 OP）
##
## 其它队伍功能入口（同样都能用 /execute as 指定玩家）：
##   /trigger team set 2 接受邀请 ／ set 3 拒绝邀请 ／ set 4 邀请玩家 ／ set 5 队伍信息
##   /trigger team set 6 退出队伍 ／ set 7 转移队长 ／ set 8 删除队伍（确认框）／ set 9 确认删除
##   /trigger team set 10 忽略邀请 ／ set 11 召集队员回大厅（仅队长、且队长本人已在大厅时可用）
##
## 对话框里“点某一行”用的是各自独立的触发计分板，行值不用大区间偏移，不会和操作编号撞区间：
##   /trigger team.pick.invite set <对方 park.uuid>       邀请该玩家（uuid 从 1 起）
##   /trigger team.pick.kick set <名册索引 + 1>           把该成员移出队伍（仅队长）
##   /trigger team.pick.transfer set <名册索引 + 1>       把队长转给他（仅队长）
## （名册索引 +1 是为了避开 scoreboard players enable 给每个玩家建出的 0 分：0 表示“没有待处理的行点击”）
##

execute unless score @s park.uuid matches 1.. run function minecraft:team/lib/ensure_uuid
function minecraft:team/lib/build_self_args
function minecraft:team/menu/main with storage minecraft:team_tmp self
