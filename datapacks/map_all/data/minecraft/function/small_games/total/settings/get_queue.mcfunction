## 检测是否禁止设置
playsound ui.button.click player @s
function minecraft:small_games/total/settings/list

tellraw @s [{text:"[修改游戏列表]\n",color:gold,click_event:{action:"run_command",command:"/function small_games/total/settings/modify_queue"},hover_event:{action:"show_text",value:{text:"需要管理员权限",color:red}}}]
# function lobby/quickplay_lists_dialog_show with storage minecraft:temp