##
## 队伍信息：追加一行成员（宏：$(name) 名字、$(code) 触发值、$(idx) 这一行在 actions 里的下标）
## 队长（@s）点击非队长成员 → /trigger team.pick.kick set $(code)（值 = 名册索引 + 1）→ trigger/kick_pick
##

$data modify storage minecraft:team_tmp dialog_tmp.actions append value {label:[{player:{name:"$(name)"}},{text:" §f$(name)"}],tooltip:{text:"$(name)"},action:{type:"run_command",command:"/trigger team set 5"}}
$execute if data storage minecraft:team_tmp row{leader:1b} run data modify storage minecraft:team_tmp dialog_tmp.actions[$(idx)].label append value {text:" §6[队长]"}
$execute if score @s team.role matches 1 if data storage minecraft:team_tmp row{leader:0b} run data modify storage minecraft:team_tmp dialog_tmp.actions[$(idx)] set value {label:[{player:{name:"$(name)"}},{text:" §f$(name)"}],tooltip:[{text:"点击将 ",color:"red"},{text:"$(name)",color:"aqua"},{text:" 移出队伍",color:"red"}],action:{type:"run_command",command:"/trigger team.pick.kick set $(code)"}}
scoreboard players add team.n board 1
