##
## 组队主菜单（宏：$(key) = 自己的 park.uuid，$(tid) = 自己的队伍ID（0=无队伍））
##

data modify storage minecraft:team_tmp dialog_tmp set value {title:{text:"组队",color:"aqua",bold:true},external_title:"组队",type:"minecraft:multi_action",columns:1,pause:false,after_action:"close",body:{type:"minecraft:plain_message",width:400,contents:[{text:"§b§l组队\n\n"},{text:"§7当前状态：§7未组队"},{text:"\n§7队伍人数：§e"},{text:"1"},{text:"\n\n"},{text:"§7多人游戏只有队长能进入，队长进入后会自动把队员一起拉进游戏。\n§7单人游戏（跑酷、飞行大赛等）不受限制。\n",color:"gray"}]},actions:[],exit_action:{label:"关闭"}}

# 重置人数临时值
scoreboard players set tmp.team.count board 0

# 已组队时更新状态、人数
$execute if data storage minecraft:team teams."$(tid)" run data modify storage minecraft:team_tmp dialog_tmp.body.contents[1].text set value "§7当前状态：§a已组队（编号 §e$(tid)§a）"
$execute if data storage minecraft:team teams."$(tid)" run execute store result score tmp.team.count board run data get storage minecraft:team teams."$(tid)".members
$execute if data storage minecraft:team teams."$(tid)" run execute store result storage minecraft:team_tmp count int 1 run scoreboard players get tmp.team.count board
$execute if data storage minecraft:team teams."$(tid)" run data modify storage minecraft:team_tmp dialog_tmp.body.contents[3].text set string storage minecraft:team_tmp count

# 邀请玩家（始终显示；没有队伍时邀请会自动创建队伍并让自己成为队长）
data modify storage minecraft:team_tmp dialog_tmp.actions append value {label:{text:"邀请玩家",color:"green"},tooltip:"点击选择要邀请的玩家",action:{type:"run_command",command:"/trigger team set 4"}}

# 过期的邀请直接清掉（有效期 60 秒）
scoreboard players set tmp.team.expires board 0
$execute if data storage minecraft:team invites."$(key)" run execute store result score tmp.team.expires board run data get storage minecraft:team invites."$(key)".expires
scoreboard players operation tmp.team.now board = team.clock board
$execute if score tmp.team.expires board <= tmp.team.now board run data remove storage minecraft:team invites."$(key)"

# 接受邀请（有邀请时显示）
$execute if data storage minecraft:team invites."$(key)" run data modify storage minecraft:team_tmp dialog_tmp.actions append value {label:{text:"接受邀请",color:"yellow"},tooltip:"加入邀请你的队伍",action:{type:"run_command",command:"/trigger team set 2"}}

# 当前队伍信息（在队伍中时显示）
$execute if data storage minecraft:team teams."$(tid)" run data modify storage minecraft:team_tmp dialog_tmp.actions append value {label:"当前队伍信息",tooltip:"查看队伍成员",action:{type:"run_command",command:"/trigger team set 5"}}

# 召集队员回大厅（仅队长、队长自己在大厅、且确实有队员不在大厅时显示）
scoreboard players set tmp.team.out board 0
$execute as @a[team=!lobby] if score @s team.id matches $(tid) run scoreboard players add tmp.team.out board 1
execute if score @s team.role matches 1 if entity @s[team=lobby] if score tmp.team.out board matches 1.. run data modify storage minecraft:team_tmp dialog_tmp.actions append value {label:{text:"召集队员回大厅",color:"gold"},tooltip:"让所有不在大厅的队员立即回大厅（正在游戏中的也会被叫回来）",action:{type:"run_command",command:"/trigger team set 11"}}

# 退出队伍（在队伍中时显示）
$execute if data storage minecraft:team teams."$(tid)" run data modify storage minecraft:team_tmp dialog_tmp.actions append value {label:"退出队伍",tooltip:"离开队伍（你是队长时会把队长转给下一名成员）",action:{type:"run_command",command:"/trigger team set 6"}}

# 转移队长（仅队长且队伍里还有其他成员时显示）
execute if score @s team.role matches 1 if score tmp.team.count board matches 2.. run data modify storage minecraft:team_tmp dialog_tmp.actions append value {label:"转移队长",tooltip:"把队长转给其他成员",action:{type:"run_command",command:"/trigger team set 7"}}

# 删除队伍（仅队长显示，红色）
execute if score @s team.role matches 1 run data modify storage minecraft:team_tmp dialog_tmp.actions append value {label:{text:"删除队伍",color:"red",bold:true},tooltip:{text:"解散队伍，所有成员退出"},action:{type:"run_command",command:"/trigger team set 8"}}

function utils:show_dialog with storage minecraft:team_tmp
