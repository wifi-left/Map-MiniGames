$execute if score total.settings.game.$(id) state matches 1 run tellraw @s [{text:"| X | ",color:red},{"nbt":"total_game_list_now.name",storage:"minecraft:temp","color":"light_purple","bold":true,interpret:true,hover_event:{action:"show_text",value:[{text:"已禁用\n",color:red},{text:"$(prefix) ",color:aqua},{nbt:"total_game_list_now.desc",color:gray,storage:"minecraft:temp",interpret:true}]}}]
$execute unless score total.settings.game.$(id) state matches 1 run tellraw @s [{text:"| O | ",color:green},{"nbt":"total_game_list_now.name",storage:"minecraft:temp","color":"light_purple","bold":true,interpret:true,hover_event:{action:"show_text",value:[{text:"已启用\n",color:green},{text:"$(prefix) ",color:aqua},{nbt:"total_game_list_now.desc",color:gray,storage:"minecraft:temp",interpret:true}]}}]

$execute if score total.settings.game.$(id) state matches 1 run data modify storage minecraft:temp dialog_tmp.inputs append value {key:"g_$(id)",type:"single_option",label_visible:true,label:[{text:""},{text:"$(prefix)",color:white}," ",{text:"$(name)"}],options:[{display:{text:"启用",color:green},id:"0",initial:false},{display:{text:"禁用",color:red},id:"1",initial:true}]}

$execute unless score total.settings.game.$(id) state matches 1 run data modify storage minecraft:temp dialog_tmp.inputs append value {key:"g_$(id)",type:"single_option",label_visible:true,label:[{text:""},{text:"$(prefix)",color:white}," ",{text:"$(name)"}],options:[{display:{text:"启用",color:green},id:"0",initial:true},{display:{text:"禁用",color:red},id:"1",initial:false}]}

$data modify storage minecraft:temp string_tmp set value '$(string_tmp)"g_$(id)":"$(spec_str)(g_$(id))",'

# $say '$(string_tmp)"g_$(id)":"$(spec_str)(g_$(id))",'
# $data modify storage minecraft:temp dialog_tmp.body.contents[1].hover_event.value append value [{text:"\n"},{text:"$(name)",bold:true}," ",{text:"已启用\n",color:green},{text:"$(prefix) ",color:aqua},{text:"$(desc)",color:gray}]