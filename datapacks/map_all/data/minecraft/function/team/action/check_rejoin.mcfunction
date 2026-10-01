##
## 回到大厅时的队伍检查（宏：$(tid) 自己的队伍编号，由 team/api/on_lobby_enter 调用）
##

# 1）队伍记录不存在（被管理员删了/被自动清理了）→ 重置自己的组队状态
$execute unless data storage minecraft:team teams."$(tid)" run scoreboard players reset @s team.id
$execute unless data storage minecraft:team teams."$(tid)" run scoreboard players reset @s team.role
$execute unless data storage minecraft:team teams."$(tid)" run return run tellraw @s ["§7你的队伍已经不存在了，已重置组队状态。\n"]

# 2）身份不是队长/队员 → 重置
execute unless score @s team.role matches 1..2 run scoreboard players reset @s team.id
execute unless score @s team.role matches 1..2 run scoreboard players reset @s team.role
execute unless score @s team.role matches 1..2 run return run tellraw @s ["§7你的组队数据不正常，已重置组队状态。\n"]

# 3）不是队长 → 到此为止（队员的组队状态交给队长上线时处理）
execute unless score @s team.role matches 1 run return 0

# 4）队长：名册里还有别的成员，但他们全都不在线 → 解散这支无效队伍
#    名册里只有自己一人时不删：那通常是刚建好队、邀请还没被接受，删了会把待处理邀请一起搞没
scoreboard players set tmp.team.others board 0
$execute store result score tmp.team.others board run data get storage minecraft:team teams."$(tid)".members
execute unless score tmp.team.others board matches 2.. run return 0
scoreboard players set tmp.team.online board -1
$execute as @a[scores={team.id=$(tid)}] run scoreboard players add tmp.team.online board 1
execute if score tmp.team.online board matches 1.. run return 0

tellraw @s ["\n§7队伍里其他成员都不在线，已自动解散这支队伍。\n"]
data modify storage minecraft:team_tmp adminargs set value {tid:0,who:"系统"}
$data modify storage minecraft:team_tmp adminargs.tid set value $(tid)
function minecraft:team/action/disband_do with storage minecraft:team_tmp adminargs
