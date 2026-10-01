##
## 解散队伍 $(tid)（宏：$(tid) 队伍编号、$(who) 解散者称呼，例如“队长”“管理员”）
##

# 暂存名册后删除队伍条目
$data modify storage minecraft:team_tmp disband set from storage minecraft:team teams."$(tid)"
$data remove storage minecraft:team teams."$(tid)"

# 通知仍在队伍中的在线成员
$tellraw @a[scores={team.id=$(tid)}] ["\n§c队伍已被$(who)解散。\n"]
$execute as @a[scores={team.id=$(tid)}] run playsound block.anvil.land player @s ~ ~ ~ 1 1 0

# 逐个清除成员状态（含离线成员）
scoreboard players set tmp.team.count board 0
execute store result score tmp.team.count board run data get storage minecraft:team_tmp disband.members
scoreboard players set team.i board 0
data modify storage minecraft:team_tmp loop set value {i:0}
function minecraft:team/lib/disband_loop with storage minecraft:team_tmp loop
