##
## 转移队长：追加一行成员（宏：$(name)、$(code)；同时读取 storage minecraft:team_tmp row）
## 跳过队长自己（leader:1b）；点击 → /trigger team.pick.transfer set $(code)（值 = 名册索引 + 1）→ trigger/transfer_pick
##

$execute unless data storage minecraft:team_tmp row{leader:1b} run data modify storage minecraft:team_tmp dialog_tmp.actions append value {label:[{player:{name:"$(name)"}},{text:" §f$(name)"}],tooltip:[{text:"点击把队长转给 ",color:"yellow"},{text:"$(name)",color:"aqua"}],action:{type:"run_command",command:"/trigger team.pick.transfer set $(code)"}}
execute unless data storage minecraft:team_tmp row{leader:1b} run scoreboard players add team.n board 1
