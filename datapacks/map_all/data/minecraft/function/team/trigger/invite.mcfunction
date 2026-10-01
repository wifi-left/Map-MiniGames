##
## /trigger team set 4 -- 打开邀请玩家列表（同步：逐个解析在线玩家名字后构建）
## 组队是全服的：候选人是所有在线玩家（不限大厅 / 维度 / 游戏），排除自己与现队友
##

# 自己必须可被识别（park.uuid 同时用作邀请目标键）
execute unless score @s park.uuid matches 1.. run function minecraft:team/lib/ensure_uuid

# 排除自己与现队友
scoreboard players operation tmp.team.self board = @s park.uuid
scoreboard players set tmp.team.tid board 0
execute if score @s team.id matches 1.. run scoreboard players operation tmp.team.tid board = @s team.id

# 空列表对话框
data modify storage minecraft:team_tmp dialog_tmp set value {title:{text:"§7邀请玩家",color:"green",bold:true},external_title:"邀请玩家",type:"minecraft:multi_action",columns:1,pause:false,after_action:"none",body:{type:"minecraft:plain_message",width:400,contents:[{text:"§7点击下方玩家即可邀请他加入队伍。\n§7对方会在聊天栏收到提示，点击接受即可入队。\n",color:"gray"}]},actions:[],exit_action:{label:"返回",tooltip:"返回组队菜单",action:{type:"run_command",command:"/trigger team set 1"}}}

scoreboard players set team.n board 0
execute as @a at @s unless score @s park.uuid = tmp.team.self board unless score @s team.id = tmp.team.tid board run function minecraft:team/menu/invite_row

# 统计“本可以邀请的在线玩家数”，用来区分“没人可邀”和“名字解析失败”
scoreboard players set tmp.team.cands board 0
execute as @a unless score @s park.uuid = tmp.team.self board unless score @s team.id = tmp.team.tid board run scoreboard players add tmp.team.cands board 1

# 有人在线，但一个名字都没解析出来 -> 说明取名字的途径在这个版本不工作，给出明确提示
execute if score team.n board matches 0 if score tmp.team.cands board matches 1.. run data modify storage minecraft:team_tmp dialog_tmp set value {title:{text:"§7邀请玩家",color:"green",bold:true},external_title:"邀请玩家",type:"minecraft:notice",pause:false,body:{type:"minecraft:plain_message",width:400,contents:[{text:"§c有在线玩家，但名字解析失败，暂时无法生成邀请列表。\n§7请把 /function minecraft:team/debug/name_test 的输出（两行）发给作者。\n",color:"gray"}]}}

# 确实没有其他在线玩家 -> 普通通知框
execute if score team.n board matches 0 if score tmp.team.cands board matches 0 run data modify storage minecraft:team_tmp dialog_tmp set value {title:{text:"§7邀请玩家",color:"green",bold:true},external_title:"邀请玩家",type:"minecraft:notice",pause:false,body:{type:"minecraft:plain_message",width:400,contents:[{text:"§7现在没有其他在线玩家可以邀请。\n§7组队邀请对全服玩家生效，稍后再打开本页面看看。\n",color:"gray"}]}}
function utils:show_dialog with storage minecraft:team_tmp
