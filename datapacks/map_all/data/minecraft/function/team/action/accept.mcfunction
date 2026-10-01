##
## 接受邀请（宏：$(key) 自己的 park.uuid；参数包来自 storage minecraft:team_tmp self）
##

$execute unless data storage minecraft:team invites."$(key)" run return run tellraw @s ["§c你没有待处理的组队邀请。"]
# 邀请有效期 60 秒：过期则删除邀请并提示
scoreboard players set tmp.team.expires board 0
$execute store result score tmp.team.expires board run data get storage minecraft:team invites."$(key)".expires
scoreboard players operation tmp.team.now board = team.clock board
$execute if score tmp.team.expires board <= tmp.team.now board run data remove storage minecraft:team invites."$(key)"
execute if score tmp.team.expires board <= tmp.team.now board run return run tellraw @s ["§c该组队邀请已过期（有效期 60 秒）。\n"]
execute if score @s team.id matches 1.. run return run tellraw @s ["§c你已经在一个队伍里了，请先退出队伍。"]
$data modify storage minecraft:team_tmp args set from storage minecraft:team invites."$(key)"
execute store result storage minecraft:team_tmp args.key int 1 run scoreboard players get @s park.uuid
function minecraft:team/action/join_team with storage minecraft:team_tmp args
