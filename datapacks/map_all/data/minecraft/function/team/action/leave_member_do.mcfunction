##
## 把成员 $(name) 移出队伍 $(tid) 并清除其状态（宏：$(tid)、$(name)）
##

# 通知队伍（在清除状态之前，保证还能选到人）
$tellraw @a[scores={team.id=$(tid)}] ["\n§6[队伍] §e玩家 §b$(name)§e 离开了队伍。\n"]

# 从名册移除：逐个拷贝+比名字删掉第一个匹配项（不用“下标后接谓词”的写法，那种写法在本图里疑似不生效）
# 并比对人数变化：删不掉说明名字对不上，通知管理员排查（避免“人已退出、名册还留着他”）
scoreboard players set tmp.team.count board 0
$execute store result score tmp.team.count board run data get storage minecraft:team teams."$(tid)".members
scoreboard players set team.i board 0
$data modify storage minecraft:team_tmp rm set value {tid:"$(tid)",i:0,name:"$(name)"}
function minecraft:team/lib/remove_member with storage minecraft:team_tmp rm
scoreboard players set tmp.team.after board 0
$execute store result score tmp.team.after board run data get storage minecraft:team teams."$(tid)".members
$execute if score tmp.team.after board = tmp.team.count board run tellraw @a[tag=map.op] ["§c[组队] 名册更新失败：$(name) 退出时没能从队伍 #$(tid) 的名册里删掉（多半是名字对不上）。\n"]

# 清除状态
$scoreboard players reset $(name) team.id
$scoreboard players reset $(name) team.role

$execute as @a[name="$(name)"] run tellraw @s ["\n§7你已离开队伍。\n"]

# 只剩一名成员时自动解散（队员退出、或队长退出移交后只剩新队长一人）
function minecraft:team/lib/check_survivor with storage minecraft:team_tmp args
