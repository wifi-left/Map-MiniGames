##
## “当前队伍信息”对话框（宏：$(tid)）
## 队长点击其他成员可将其移出队伍
##

$data modify storage minecraft:team_tmp dialog_tmp set value {title:{text:"当前队伍信息",color:"aqua",bold:true},external_title:"当前队伍信息",type:"minecraft:multi_action",columns:1,pause:false,after_action:"none",body:{type:"minecraft:plain_message",width:400,contents:[{text:"§7队伍编号：§e$(tid)"},{text:"\n§7队伍人数：§e"},{text:"1"},{text:"\n"},{text:"§7点击成员可以把该玩家移出队伍。\n",color:"red"}]},actions:[],exit_action:{label:"返回",tooltip:"返回组队菜单",action:{type:"run_command",command:"/trigger team set 1"}}}

# 人数
scoreboard players set tmp.team.count board 0
$execute store result score tmp.team.count board run data get storage minecraft:team teams."$(tid)".members
execute store result storage minecraft:team_tmp count int 1 run scoreboard players get tmp.team.count board
data modify storage minecraft:team_tmp dialog_tmp.body.contents[2].text set string storage minecraft:team_tmp count

# 队员看不到“点击移出”的提示
execute if score @s team.role matches 2 run data modify storage minecraft:team_tmp dialog_tmp.body.contents[4].text set value ""

# 循环追加成员行
scoreboard players set team.n board 0
scoreboard players set team.i board 0
$data modify storage minecraft:team_tmp loop set value {tid:"$(tid)",i:0}
function minecraft:team/menu/info_loop with storage minecraft:team_tmp loop

# 名册异常为空时换成一个只有确定按钮的通知框（multi_action 的 actions 不能为空）
execute if score team.n board matches 0 run data modify storage minecraft:team_tmp dialog_tmp set value {title:{text:"当前队伍信息",color:"aqua",bold:true},external_title:"当前队伍信息",type:"minecraft:notice",pause:false,body:{type:"minecraft:plain_message",width:400,contents:[{text:"§7队伍名册为空（数据异常）。\n§7建议退出队伍后重新组队。\n",color:"gray"}]}}
function utils:show_dialog with storage minecraft:team_tmp
