##
## 快捷开始游戏的单条目渲染（宏），由 minecraft:lobby/quickplay_info 调用
## 参数：category / name / color / join / id
##

# 注册加入命令，供 /trigger quickplay set <id> 使用
$data modify storage minecraft:quickplay joins."$(id)" set value {command:"$(join)"}

# ---------- 模式1：聊天栏文本列表 ----------
$scoreboard players set temp.id temp $(id)
execute if score quickplay.showmode temp matches 1 if score quickplay.newcat temp matches 1 if score quickplay.ismain temp matches 1 run tellraw @s ["\n§6§l【小游戏合集】"]
$execute if score quickplay.showmode temp matches 1 if score quickplay.newcat temp matches 1 unless score quickplay.ismain temp matches 1 run tellraw @s ["\n§6§l【$(category)】"]
$execute if score temp.id temp matches ..9 if score quickplay.showmode temp matches 1 run tellraw @s [{"text":"[§a00$(id)§7§r]: §$(color)$(name)","color":"yellow","click_event":{"action":"run_command","command":"/trigger quickplay set $(id)"},"hover_event":{"action":"show_text","value":{"text":"点击快速加入 §$(color)$(name)","color":"gold"}},insertion:"/trigger quickplay set $(id)"}]
$execute if score temp.id temp matches 10..99 if score quickplay.showmode temp matches 1 run tellraw @s [{"text":"[§a0$(id)§7§r]: §$(color)$(name)","color":"yellow","click_event":{"action":"run_command","command":"/trigger quickplay set $(id)"},"hover_event":{"action":"show_text","value":{"text":"点击快速加入 §$(color)$(name)","color":"gold"}},insertion:"/trigger quickplay set $(id)"}]
$execute if score temp.id temp matches 100.. if score quickplay.showmode temp matches 1 run tellraw @s [{"text":"[§a$(id)§7§r]: §$(color)$(name)","color":"yellow","click_event":{"action":"run_command","command":"/trigger quickplay set $(id)"},"hover_event":{"action":"show_text","value":{"text":"点击快速加入 §$(color)$(name)","color":"gold"}},insertion:"/trigger quickplay set $(id)"}]

# ---------- 模式2：主对话框（第一遍）----------
# main 分类：直接作为主界面按钮
$execute if score quickplay.showmode temp matches 2 if score quickplay.ismain temp matches 1 run data modify storage minecraft:temp dialog_tmp.actions append value {label:"§$(color)$(name)",action:{type:"run_command",command:"/trigger quickplay set $(id)"},insertion:"/trigger quickplay set $(id)",tooltip:[{text:"§$(color)$(name)",color:gray},"\n",{text:"游戏ID：",color:gray},{text:"$(id)",color:gold},"\n",{text:"点击快速加入",color:green}]}
# 非 main 分类：新分类时建立该分类的按钮列表（已存在则保留，避免同名分类被清空）
$execute if score quickplay.showmode temp matches 2 if score quickplay.newcat temp matches 1 unless score quickplay.ismain temp matches 1 unless data storage minecraft:temp quickplay.cats."$(category)" run data modify storage minecraft:temp quickplay.cats."$(category)" set value []
# 非 main 分类：游戏按钮收进该分类的列表
$execute if score quickplay.showmode temp matches 2 unless score quickplay.ismain temp matches 1 run data modify storage minecraft:temp quickplay.cats."$(category)" append value {label:"§$(color)$(name)",action:{type:"run_command",command:"/trigger quickplay set $(id)"},insertion:"/trigger quickplay set $(id)",tooltip:[{text:"§$(color)$(name)",color:gray},"\n",{text:"游戏ID：",color:gray},{text:"$(id)",color:gold},"\n",{text:"点击快速加入",color:green}]}

# ---------- 模式3：主对话框（第二遍，生成分类按钮）----------
$execute if score quickplay.showmode temp matches 3 if score quickplay.newcat temp matches 1 unless score quickplay.ismain temp matches 1 unless data storage minecraft:temp quickplay.done."$(category)" run data modify storage minecraft:temp dialog_tmp.actions append value {label:"§$(color)§l【$(category)】",tooltip:[{text:"点击查看该分类下的游戏",color:green}],action:{type:"show_dialog",dialog:{type:"minecraft:multi_action",title:{text:"【$(category)】",color:"white",bold:true},body:{type:"minecraft:plain_message",contents:[{text:"点击下方按钮快速加入游戏",color:green}]},columns:2,pause:false,after_action:"close",exit_action:{label:"返回",tooltip:"返回快捷开始游戏",action:{type:"run_command",command:"/trigger quickplay set -1"}},actions:[]}}}
$execute if score quickplay.showmode temp matches 3 if score quickplay.newcat temp matches 1 unless score quickplay.ismain temp matches 1 unless data storage minecraft:temp quickplay.done."$(category)" run data modify storage minecraft:temp dialog_tmp.actions[-1].action.dialog.actions set from storage minecraft:temp quickplay.cats."$(category)"
$execute if score quickplay.showmode temp matches 3 if score quickplay.newcat temp matches 1 unless score quickplay.ismain temp matches 1 run data modify storage minecraft:temp quickplay.done."$(category)" set value 1b
