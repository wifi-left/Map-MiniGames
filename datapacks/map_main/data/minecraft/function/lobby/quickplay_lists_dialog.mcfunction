data modify storage minecraft:temp dialog_tmp set value {actions:[],title:{text:"快捷开始游戏"},type:"multi_action",body:{type:"minecraft:plain_message",width:400,contents:[{text:"您也可以通过命令 ",bold:false,color:green},{text:"/trigger quickplay set -1",color:"gold"},{text:" 打开此页面\n",color:green},{text:"或者使用 ",color:green},{text:"/trigger quickplay set 1",color:gold},{text:" 在聊天栏内显示"}]},columns:2,pause:false,"exit_action": {"label": "关闭"}}
scoreboard players reset @s quickplay
scoreboard players enable @s quickplay
function minecraft:lobby/quickplay_lists

function minecraft:lobby/quickplay_lists_dialog_show with storage minecraft:temp