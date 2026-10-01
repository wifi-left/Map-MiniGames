##
## 管理员：强制把某位玩家加入队伍
##
## 用法：
##   /function minecraft:team/api/force_join {player:"bot1",tid:0}   ← tid=0 表示加入你自己所在的队伍
##   /function minecraft:team/api/force_join {player:"bot1",tid:3}   ← 加入编号 3 的队伍
##
## 说明：以“队员”身份加入。若对方已在别的队伍里，会先把他退出来再加（队长且离线时退不出来会提示）
##

$execute unless entity @a[name="$(player)"] run return run tellraw @s ["§c该玩家必须在线。\n"]

# 已在别的队伍 → 先退队
$execute if score $(player) team.id matches 1.. run function minecraft:team/api/force_leave {player:"$(player)"}
$execute if score $(player) team.id matches 1.. run return run tellraw @s ["§c$(player) 退队失败（他可能是队长且不在线），请手动处理。\n"]

# 解析目标队伍编号：tid=0 表示用执行者自己的队伍
$scoreboard players set tmp.team.force board $(tid)
execute if score tmp.team.force board matches 0 run scoreboard players operation tmp.team.force board = @s team.id
execute unless score tmp.team.force board matches 1.. run return run tellraw @s ["§c没有可用的队伍编号：tid 传了 0，而你自己的队伍编号也不存在。\n"]

data modify storage minecraft:team_tmp force set value {tid:0,name:""}
execute store result storage minecraft:team_tmp force.tid int 1 run scoreboard players get tmp.team.force board
$data modify storage minecraft:team_tmp force.name set value "$(player)"
function minecraft:team/api/force_join_do with storage minecraft:team_tmp force
