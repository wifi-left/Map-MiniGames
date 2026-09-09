##
## 快捷开始游戏的单条目处理（宏），由 minecraft:lobby/quickplay/quickplay_lists 调用
## 参数：category / name / color / join
##

# 自动分配游戏ID（从 2 开始，1 保留给聊天栏列表）
scoreboard players add quickplay.id temp 1

# 组装渲染参数后交给 quickplay_entry
$data modify storage minecraft:temp quickplay.entry set value {category:"$(category)",name:"$(name)",color:"$(color)",join:"$(join)"}
execute store result storage minecraft:temp quickplay.entry.id int 1 run scoreboard players get quickplay.id temp

# 分类切换检测
scoreboard players reset quickplay.newcat temp
scoreboard players reset quickplay.ismain temp
$execute unless data storage minecraft:temp {quickplay:{cat_last:"$(category)"}} run scoreboard players set quickplay.newcat temp 1
$data modify storage minecraft:temp quickplay.cat_last set value "$(category)"
execute if data storage minecraft:temp {quickplay:{cat_last:"main"}} run scoreboard players set quickplay.ismain temp 1

function minecraft:lobby/quickplay/quickplay_entry with storage minecraft:temp quickplay.entry
