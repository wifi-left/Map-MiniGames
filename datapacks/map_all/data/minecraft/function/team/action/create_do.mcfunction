##
## 建立队伍条目（宏：$(tid) 队伍编号、$(name) 队长名字）
##

$data modify storage minecraft:team teams."$(tid)" set value {members:[{name:"$(name)",leader:1b}]}
$tellraw @s ["§a你创建了队伍（编号 §e$(tid)§a）。\n§7接着点击玩家即可邀请对方加入。\n"]
