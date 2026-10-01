##
## 移交队长给 $(name)（宏：$(tid) 队伍编号、$(name) 新队长名字）
##

# 名册：取消旧队长标记、设置新队长
$data modify storage minecraft:team teams."$(tid)".members[{leader:1b}].leader set value 0b
$data modify storage minecraft:team teams."$(tid)".members[{name:"$(name)"}].leader set value 1b

# 计分项
scoreboard players set @s team.role 2
$scoreboard players set $(name) team.role 1

# 通知
$tellraw @a[scores={team.id=$(tid)}] ["\n§6[队伍] §e队长已移交给 §b$(name)§e。\n"]
$execute as @a[scores={team.id=$(tid)}] run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
