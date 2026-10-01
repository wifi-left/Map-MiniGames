##
## 管理员队伍操作：打印第 $(tid) 支队伍一行（宏：$(tid) 队伍编号，队伍不存在则不打印）
## 队长名字从名册里取（队长字段 leader:1b），所以队长离线也显示得出来
##

$execute unless data storage minecraft:team teams."$(tid)" run return 0
scoreboard players add team.tid.found board 1
data remove storage minecraft:team_tmp adminrow
$execute store result storage minecraft:team_tmp adminrow.count int 1 run data get storage minecraft:team teams."$(tid)".members
$data modify storage minecraft:team_tmp adminrow.leader set from storage minecraft:team teams."$(tid)".members[{leader:1b}][0].name
execute unless data storage minecraft:team_tmp adminrow.leader run data modify storage minecraft:team_tmp adminrow.leader set value "?"

$tellraw @s ["§7- §e#$(tid)§7 队长 §f",{"nbt":"adminrow.leader","storage":"minecraft:team_tmp"},"§7 成员 §e",{"nbt":"adminrow.count","storage":"minecraft:team_tmp"},"§7 人  ",{"text":"[删除]","color":"red","bold":true,"click_event":{"action":"run_command","command":"/function minecraft:team/api/disband_one {tid:$(tid)}"},"hover_event":{"action":"show_text","value":"删除这支队伍，成员会被移出"}}]
