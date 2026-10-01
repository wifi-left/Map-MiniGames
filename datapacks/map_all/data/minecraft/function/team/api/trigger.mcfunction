##
## 管理员 / 测试用：让指定玩家执行一次组队触发器（等效于他自己敲 /trigger <obj> set <value>）
##
## 用法：
##   /function minecraft:team/api/trigger {player:"bot1",obj:"team",value:1}
##   对话框里点某一行也可以用同一招：把“那一行对应的计分板与数值”发给点击者
##   /function minecraft:team/api/trigger {player:"Steve",obj:"team.pick.invite",value:5}
##
## 取值（obj = 计分板）：
##   obj:"team"                value: 1 主菜单 ／ 2 接受邀请 ／ 3 拒绝邀请 ／ 4 邀请列表 ／ 5 队伍信息
##                                    6 退出队伍 ／ 7 转移队长 ／ 8 删除确认框 ／ 9 确认删除 ／ 10 忽略邀请
##                                    11 召集队员回大厅（需队长身份且队长自己在大厅，否则只会收到提示）
##   obj:"team.pick.invite"    value: 邀请列表里某一行的对方 park.uuid（邀请该玩家）
##   obj:"team.pick.kick"      value: 队伍信息里某一行的“名册索引 + 1”（移出该成员）
##   obj:"team.pick.transfer"  value: 转移队长里某一行的“名册索引 + 1”（把队长转给他）
##
## 说明：Carpet 假人没有客户端，无法自己敲 /trigger，用本函数代替它操作。
##       “某一行”用独立计分板承载：invite 的值就是对方 park.uuid；kick / transfer 的值是“名册索引 + 1”
##       （+1 是为了把 0 空出来 —— scoreboard players enable 会给每个玩家建一个 0 分，拿 0 当有效行值会每 tick 误触发）。
##

$scoreboard players set $(player) $(obj) $(value)
