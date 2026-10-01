##
## 队长加入游戏：把同队队员一起拉进来（参数读 storage minecraft:team_tmp api）
## 由 minecraft:team/api/can_join 调用，返回 1 放行队长
##

# 不需要拉人的游戏（pull:0b）直接放行
execute if data storage minecraft:team_tmp api{pull:0b} run return 1

# 清理残留标记
tag @a remove team.pulling

# 标记要一起拉入的队员：大厅里的队员 + 全局旁观中的队员
# （正在其它游戏里的队员不动，避免把人家从游戏里拽出来）
scoreboard players operation tmp.team.tid board = @s team.id
execute as @a[team=lobby,scores={team.role=2}] if score @s team.id = tmp.team.tid board run tag @s add team.pulling
execute as @a[tag=GLOBAL.SPEC,scores={team.role=2}] if score @s team.id = tmp.team.tid board run tag @s add team.pulling

# 逐个拉入（队员的 join 会再次调用本 API，靠 team.pulling 放行且不会递归拉人）
execute as @a[tag=team.pulling] run function minecraft:team/lib/pull_do with storage minecraft:team_tmp api
tag @a remove team.pulling
return 1
