##
## “转移队长”对话框（宏：$(tid)）
## 列出除队长自己以外的成员，点击即可把队长转给他
##

data modify storage minecraft:team_tmp dialog_tmp set value {title:{text:"转移队长",color:"yellow",bold:true},external_title:"转移队长",type:"minecraft:multi_action",columns:1,pause:false,after_action:"none",body:{type:"minecraft:plain_message",width:400,contents:[{text:"§7点击你想把队长交给的成员。\n",color:"gray"}]},actions:[],exit_action:{label:"返回",tooltip:"返回组队菜单",action:{type:"run_command",command:"/trigger team set 1"}}}

scoreboard players set team.n board 0
scoreboard players set team.i board 0
scoreboard players set tmp.team.count board 0
$data modify storage minecraft:team_tmp loop set value {tid:"$(tid)",i:0}
$execute store result score tmp.team.count board run data get storage minecraft:team teams."$(tid)".members
function minecraft:team/menu/transfer_loop with storage minecraft:team_tmp loop

# 没有其他成员时换成一个只有确定按钮的通知框（正常情况下主菜单不会显示此按钮）
execute if score team.n board matches 0 run data modify storage minecraft:team_tmp dialog_tmp set value {title:{text:"转移队长",color:"yellow",bold:true},external_title:"转移队长",type:"minecraft:notice",pause:false,body:{type:"minecraft:plain_message",width:400,contents:[{text:"§7队伍里现在没有其他成员。\n",color:"gray"}]}}
function utils:show_dialog with storage minecraft:team_tmp
