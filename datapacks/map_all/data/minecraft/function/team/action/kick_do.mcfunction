##
## 将成员 $(name) 移出队伍 $(tid)（宏：$(tid)、$(name)）
## 名册按名字删除、计分项按名字重置，因此离线成员同样可以被移出
##

# 不能移出队长自己
scoreboard players set tmp.team.fail board 0
$execute as @a[name="$(name)"] if score @s team.role matches 1 run scoreboard players set tmp.team.fail board 1
execute if score tmp.team.fail board matches 1 run return run tellraw @s ["§c不能把队长自己移出队伍。"]

# 从名册移除：逐个拷贝+比名字删掉第一个匹配项（不用“下标后接谓词”的写法，那种写法在本图里疑似不生效）
# 并比对人数变化：删不掉就当场提示，避免出现“人已被移出、名册里却还留着他”的脏数据
scoreboard players set tmp.team.count board 0
$execute store result score tmp.team.count board run data get storage minecraft:team teams."$(tid)".members
scoreboard players set team.i board 0
$data modify storage minecraft:team_tmp rm set value {tid:"$(tid)",i:0,name:"$(name)"}
function minecraft:team/lib/remove_member with storage minecraft:team_tmp rm
scoreboard players set tmp.team.after board 0
$execute store result score tmp.team.after board run data get storage minecraft:team teams."$(tid)".members
$execute if score tmp.team.after board = tmp.team.count board run tellraw @s ["§c[组队] 名册更新失败：没有删掉 §b$(name)§c 的条目，队伍信息还会显示他。\n§7可用 §6/function minecraft:team/api/admin_list §7查看名册人数。\n"]

# 清除该玩家的队伍状态
$scoreboard players reset $(name) team.id
$scoreboard players reset $(name) team.role

# 通知对方与队伍
$execute as @a[name="$(name)"] run tellraw @s ["\n§c你已被队长移出队伍。\n"]
$execute as @a[name="$(name)"] run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
$tellraw @a[scores={team.id=$(tid)}] ["\n§6[队伍] §e玩家 §b$(name)§e 已被队长移出队伍。\n"]

# 只剩一名成员时自动解散（移出后可能只剩队长一人）
function minecraft:team/lib/check_survivor with storage minecraft:team_tmp args

# 刷新界面：
#   队伍还在（只是少了一个人）→ 重开队伍信息框，列表就是最新的
#   队伍已经因为"只剩一人"被自动解散 → 回主菜单（显示未组队），
#   否则旧的信息框会一直停在过期的成员列表上，再点一次还会提示"只有队长可以…"
$execute if data storage minecraft:team teams."$(tid)" run function minecraft:team/trigger/info
$execute unless data storage minecraft:team teams."$(tid)" run function minecraft:team/trigger/menu
