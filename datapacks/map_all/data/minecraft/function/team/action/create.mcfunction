##
## 创建队伍：分配编号后把自己设为队长并写入名册
## 由 minecraft:team/action/invite 在“自己还没有队伍”时调用
##

execute at @s run function minecraft:team/lib/probe_name
execute unless data storage minecraft:team_tmp probe run return 0

scoreboard players add team.count board 1
scoreboard players operation @s team.id = team.count board
scoreboard players set @s team.role 1

data modify storage minecraft:team_tmp args set value {tid:0,name:""}
execute store result storage minecraft:team_tmp args.tid int 1 run scoreboard players get @s team.id
data modify storage minecraft:team_tmp args.name set from storage minecraft:team_tmp probe.name
function minecraft:team/action/create_do with storage minecraft:team_tmp args
