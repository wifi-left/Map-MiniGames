##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## WARNING: Macros may be not fully supported yet.
$tellraw @s [{"text":"[§a$(id)§7: §$(color)$(name)§r]","color":"yellow","click_event":{"action":"run_command","command":"/trigger quickplay set $(id)"},"hover_event":{"action":"show_text","value":{"text":"点击快速加入 §$(color)$(name)","color":"gold"}},insertion:"/trigger quickplay set $(id)"}]
$data modify storage minecraft:temp dialog_tmp.actions append value {label:"§6[#§a$(id)§6] §$(color)$(name)",action:{type:"run_command",command:"/trigger quickplay set $(id)"},insertion:"/trigger quickplay set $(id)"}

# {label:"或者使用 \u00a7a/trigger quickplay \u00a7r在聊天栏内显示",width:300,action:{type:"run_command",command:"/trigger quickplay set 1"}}