$data modify storage minecraft:temp game_enable_state_tmp set value $(keys)
data modify storage minecraft:temp total_game_list set from storage minecraft:temp random_games_all.games
function minecraft:small_games/total/games/all
function minecraft:small_games/total/settings/modify_game_enable_state_dfs
playsound entity.experience_orb.pickup player @s
function minecraft:small_games/total/settings/list
tellraw @s ["\u00a7a修改成功！",{text:"[继续修改]",color:gold,click_event:{action:"run_command",command:"/function small_games/total/settings/modify_queue"},hover_event:{action:"show_text",value:{text:"需要管理员权限",color:red}}}]