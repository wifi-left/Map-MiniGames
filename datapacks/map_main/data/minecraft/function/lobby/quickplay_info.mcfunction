$scoreboard players set temp.id temp $(id)

$execute if score temp.id temp matches ..9 if score quickplay.showmode temp matches 1 run tellraw @s [{"text":"[§a00$(id)§7§r]: §$(color)$(name)","color":"yellow","click_event":{"action":"run_command","command":"/trigger quickplay set $(id)"},"hover_event":{"action":"show_text","value":{"text":"点击快速加入 §$(color)$(name)","color":"gold"}},insertion:"/trigger quickplay set $(id)"}]
$execute if score temp.id temp matches 10..99 if score quickplay.showmode temp matches 1 run tellraw @s [{"text":"[§a0$(id)§7§r]: §$(color)$(name)","color":"yellow","click_event":{"action":"run_command","command":"/trigger quickplay set $(id)"},"hover_event":{"action":"show_text","value":{"text":"点击快速加入 §$(color)$(name)","color":"gold"}},insertion:"/trigger quickplay set $(id)"}]
$execute if score temp.id temp matches 100.. if score quickplay.showmode temp matches 1 run tellraw @s [{"text":"[§a$(id)§7§r]: §$(color)$(name)","color":"yellow","click_event":{"action":"run_command","command":"/trigger quickplay set $(id)"},"hover_event":{"action":"show_text","value":{"text":"点击快速加入 §$(color)$(name)","color":"gold"}},insertion:"/trigger quickplay set $(id)"}]

$data modify storage minecraft:temp dialog_tmp.actions append value {label:"§$(color)$(name)",action:{type:"run_command",command:"/trigger quickplay set $(id)"},insertion:"/trigger quickplay set $(id)",tooltip:[{text:""},{text:"§$(color)$(name)",color:gray},"\n",{text:"游戏ID：",color:gray},{text:"$(id)",color:gold},"\n",{text:"点击快速加入",color:green}]}


# {label:"或者使用 \u00a7a/trigger quickplay \u00a7r在聊天栏内显示",width:300,action:{type:"run_command",command:"/trigger quickplay set 1"}}