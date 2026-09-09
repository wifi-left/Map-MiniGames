scoreboard players set quickplay.showmode temp 2
data modify storage minecraft:temp dialog_tmp set value {actions:[],title:{text:"快捷开始游戏"},type:"multi_action",body:{type:"minecraft:plain_message",width:400,contents:[{text:"您也可以通过命令 ",bold:false,color:green},{text:"/trigger quickplay set -1",color:"gold"},{text:" 打开此页面\n",color:green},{text:"或者使用 ",color:green},{text:"/trigger quickplay set 1",color:gold},{text:" 在聊天栏内显示"}]},columns:1,pause:false,"exit_action": {"label": "关闭"}}
scoreboard players reset @s quickplay
scoreboard players enable @s quickplay

# 清空上一次构建的分类数据（注册表在 storage minecraft:quickplay，不受影响）
data modify storage minecraft:temp quickplay set value {}
# 第一遍：main 分类直接进主界面，其余分类按 category 收集
function minecraft:lobby/quickplay/quickplay_lists
# 第二遍：为每个非 main 分类生成内嵌子对话框按钮
scoreboard players set quickplay.showmode temp 3
function minecraft:lobby/quickplay/quickplay_lists

function minecraft:lobby/quickplay_lists_dialog_show with storage minecraft:temp
