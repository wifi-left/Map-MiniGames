##
## 追加一行“邀请”按钮
## 宏：$(name) 玩家名、$(key) 对方 park.uuid（同时作为按钮触发值）、$(u0)..$(u3) 对方 UUID 四段
## 已发送过且未过期的邀请显示为 [已邀请]，点击只会刷新列表，不会重复发送
##
# 读取该玩家现有邀请的过期时间，判断是否仍然有效
scoreboard players set tmp.team.expires board 0
$execute store result score tmp.team.expires board run data get storage minecraft:team invites."$(key)".expires
scoreboard players operation tmp.team.now board = team.clock board
# 仍然有效 → [已邀请]
$execute if score tmp.team.expires board > tmp.team.now board run data modify storage minecraft:team_tmp dialog_tmp.actions append value {label:[{player:{id:[I;$(u0),$(u1),$(u2),$(u3)]}},{text:" §f$(name) §7[已邀请]"}],tooltip:[{text:"已发出邀请，等待对方回应（60 秒后自动失效）",color:"gray"}," ",{text:"如果对方已拒绝或忽略，再点一次即可重新邀请",color:"gray"}],action:{type:"run_command",command:"/trigger team.pick.invite set $(key)"}}
# 否则正常可点
$execute unless score tmp.team.expires board > tmp.team.now board run data modify storage minecraft:team_tmp dialog_tmp.actions append value {label:[{player:{id:[I;$(u0),$(u1),$(u2),$(u3)]}},{text:" §f$(name)"}],tooltip:[{text:"点击邀请 ",color:"green"},{text:"$(name)",color:"aqua"},{text:" 加入队伍",color:"green"}],action:{type:"run_command",command:"/trigger team.pick.invite set $(key)"}}
scoreboard players add team.n board 1

