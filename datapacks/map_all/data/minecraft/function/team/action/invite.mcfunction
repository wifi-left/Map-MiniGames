##
## 邀请玩家加入队伍（宏：$(targetkey) 目标 park.uuid、$(targetname) 目标名字）
## 由“邀请玩家”列表中的按钮调用，以邀请者为上下文
##

# 目标必须在线
$execute unless entity @a[scores={park.uuid=$(targetkey)}] run return run tellraw @s ["§c该玩家已不在线。"]

# 已经邀请过、且邀请还没过期 → 不重复发送，避免对方被反复打扰
scoreboard players set tmp.team.expires board 0
$execute store result score tmp.team.expires board run data get storage minecraft:team invites."$(targetkey)".expires
scoreboard players operation tmp.team.now board = team.clock board
$execute if score tmp.team.expires board > tmp.team.now board run return run tellraw @s ["\n§8========================================\n§c该玩家 §b$(targetname)§c 已经被邀请过了，§7请等待对方回应（60 秒后自动失效）。\n§8========================================\n"]

# 不能邀请自己
$execute if score @s park.uuid matches $(targetkey) run return run tellraw @s ["§c不能邀请自己。"]

# 不能邀请自己队伍里的玩家
scoreboard players set tmp.team.mytid board 0
execute if score @s team.id matches 1.. run scoreboard players operation tmp.team.mytid board = @s team.id
scoreboard players set tmp.team.fail board 0
$execute as @a[scores={park.uuid=$(targetkey)}] if score @s team.id = tmp.team.mytid board run scoreboard players set tmp.team.fail board 1
$execute if score tmp.team.fail board matches 1 run return run tellraw @s ["§c§b$(targetname)§c 已经在你的队伍里了，不能重复邀请。"]

# 目标已经有队伍则拒绝
scoreboard players set tmp.team.fail board 0
$execute as @a[scores={park.uuid=$(targetkey)}] if score @s team.id matches 1.. run scoreboard players set tmp.team.fail board 1
execute if score tmp.team.fail board matches 1 run return run tellraw @s ["§c该玩家已经有队伍了。"]

# 自己还没有队伍 → 自动创建（自己成为队长）
execute unless score @s team.id matches 1.. run function minecraft:team/action/create
execute unless score @s team.id matches 1.. run return run tellraw @s ["§c创建队伍失败，请稍后再试。"]

# 自己的名字（用于邀请提示）
execute at @s run function minecraft:team/lib/probe_name

# 组装参数包（含按 team.expiry 计算的过期时间）
data modify storage minecraft:team_tmp args set value {tid:0,name:"",key:0,from:"",expires:0}
execute store result storage minecraft:team_tmp args.tid int 1 run scoreboard players get @s team.id
$data modify storage minecraft:team_tmp args.name set value "$(targetname)"
$data modify storage minecraft:team_tmp args.key set value $(targetkey)
execute if data storage minecraft:team_tmp probe run data modify storage minecraft:team_tmp args.from set from storage minecraft:team_tmp probe.name
# 过期时间 = 当前秒表 + 有效期
# 有效期优先取 team.expiry（默认 60 秒）；配置缺失时退回 60，秒表缺失时也不会被算成“立即过期”
scoreboard players set tmp.team.expires board 0
execute if score team.expiry board matches 1.. run scoreboard players operation tmp.team.expires board += team.expiry board
execute unless score tmp.team.expires board matches 1.. run scoreboard players set tmp.team.expires board 60
execute if score team.clock board matches 1.. run scoreboard players operation tmp.team.expires board += team.clock board
execute store result storage minecraft:team_tmp args.expires int 1 run scoreboard players get tmp.team.expires board
function minecraft:team/action/invite_do with storage minecraft:team_tmp args
