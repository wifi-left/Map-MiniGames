##
## 队长退出队伍：先读取自己的名字
##

execute at @s run function minecraft:team/lib/probe_name
execute unless data storage minecraft:team_tmp probe run return run tellraw @s ["§c读取玩家名失败，请稍后再试。"]
data modify storage minecraft:team_tmp args set value {tid:0,name:""}
execute store result storage minecraft:team_tmp args.tid int 1 run scoreboard players get @s team.id
data modify storage minecraft:team_tmp args.name set from storage minecraft:team_tmp probe.name
function minecraft:team/action/leave_leader_do with storage minecraft:team_tmp args
