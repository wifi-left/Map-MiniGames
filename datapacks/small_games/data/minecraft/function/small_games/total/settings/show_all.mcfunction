data modify storage minecraft:temp total_game_list set from storage minecraft:temp random_games_all.games
data modify storage minecraft:temp string_tmp set value ""
tellraw @s ["\n\u00a77※ 小游戏派对游戏列表\n"]
data modify storage minecraft:temp dialog_tmp set value {title:{text:"小游戏派对设置"},type:"confirmation",body:{type:"minecraft:plain_message",width:400,contents:[{"text":""},{text:"[你可以在聊天栏用鼠标移到对应游戏查看其具体信息]",color:gold,bold:true,hover_event:{action:show_text,value:[{text:""},{text:"你可以在聊天栏用鼠标移到对应游戏查看其具体信息",color:white,bold:true}]}}]},columns:2,pause:false,"no": {"label": "取消"},"yes":{label:"修改",action:{type:"dynamic/run_command",template:""}},inputs:[]}
# data modify storage minecraft:temp dialog_tmp set value {title:{text:"小游戏排队设置"},type:"confirmation",body:{type:"minecraft:plain_message",width:400,contents:[{"text":"仅管理员可修改"}]},columns:2,pause:false,"no": {"label": "取消"},"yes":{label:"修改"},inputs:[]}
# {key:a,type:"single_option",label:"A",initial:false,on_false:0,on_true:1}
function minecraft:small_games/total/settings/show_all_dfs
function minecraft:small_games/total/settings/warp_kuohao_string_tmp with storage minecraft:temp
data modify storage minecraft:temp dialog_tmp.yes.action.template set from storage minecraft:temp string_tmp
tellraw @s [""]