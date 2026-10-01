##
## 把 @s 加入队伍（宏：$(team) 队伍编号、$(name) 自己的名字、$(key) 自己的 park.uuid）
##

$execute unless data storage minecraft:team teams."$(team)" run data remove storage minecraft:team invites."$(key)"
$execute unless data storage minecraft:team teams."$(team)" run return run tellraw @s ["§c该队伍已经不存在了。"]

# 清理名册中可能残留的同名条目（逐个拷贝+比名字，避免出现重名双份）
scoreboard players set tmp.team.count board 0
$execute store result score tmp.team.count board run data get storage minecraft:team teams."$(team)".members
scoreboard players set team.i board 0
$data modify storage minecraft:team_tmp rm set value {tid:"$(team)",i:0,name:"$(name)"}
function minecraft:team/lib/remove_member with storage minecraft:team_tmp rm

# 写入门册与状态
$execute unless data storage minecraft:team teams."$(team)".members run data modify storage minecraft:team teams."$(team)".members set value []
$data modify storage minecraft:team teams."$(team)".members append value {name:"$(name)",leader:0b}
$scoreboard players set @s team.id $(team)
scoreboard players set @s team.role 2
$data remove storage minecraft:team invites."$(key)"

$tellraw @s ["\n§a你已加入队伍（编号 §e$(team)§a）！\n"]
$tellraw @a[scores={team.id=$(team),team.role=1}] ["\n§6[队伍] §b$(name)§a 接受了邀请，加入了队伍。\n"]
$execute as @a[scores={team.id=$(team),team.role=1}] run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
