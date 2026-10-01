##
## 无效队伍清理：第 $(tid) 支队伍如果没有任何在线成员，就删除（宏：$(tid) 队伍编号）
## 由 minecraft:team/sweep_dead 每 30 秒遍历调用
##

scoreboard players set tmp.team.online board 0
$execute as @a[scores={team.id=$(tid)}] run scoreboard players add tmp.team.online board 1
execute if score tmp.team.online board matches 1.. run return 0

# 全员离线 → 删掉（成员状态按名册名字清，离线也生效，他们回来就是无队伍状态）
data modify storage minecraft:team_tmp adminargs set value {tid:0,who:"系统"}
$data modify storage minecraft:team_tmp adminargs.tid set value $(tid)
function minecraft:team/action/disband_do with storage minecraft:team_tmp adminargs
$tellraw @a[tag=map.op] ["§7[组队] 队伍 #$(tid) 全员离线，已自动清理。\n"]
