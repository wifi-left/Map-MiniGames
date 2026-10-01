##
## 强制加入队伍的内部实现（宏：$(tid) 队伍编号、$(name) 玩家名）
## 由 minecraft:team/api/force_join 调用
##

$execute unless data storage minecraft:team teams."$(tid)" run return run tellraw @s ["§c队伍编号 $(tid) 不存在。\n"]

# 清理名册里可能残留的同名条目（逐个拷贝+比名字，避免出现重名双份）
scoreboard players set tmp.team.count board 0
$execute store result score tmp.team.count board run data get storage minecraft:team teams."$(tid)".members
scoreboard players set team.i board 0
$data modify storage minecraft:team_tmp rm set value {tid:"$(tid)",i:0,name:"$(name)"}
function minecraft:team/lib/remove_member with storage minecraft:team_tmp rm

# 写名册与计分项（离线玩家也能写）
$execute unless data storage minecraft:team teams."$(tid)".members run data modify storage minecraft:team teams."$(tid)".members set value []
$data modify storage minecraft:team teams."$(tid)".members append value {name:"$(name)",leader:0b}
$scoreboard players set $(name) team.id $(tid)
$scoreboard players set $(name) team.role 2

# 通知
$tellraw @a[scores={team.id=$(tid)}] ["\n§6[队伍] §b$(name)§a 被管理员加入了队伍。\n"]
$execute as @a[name="$(name)"] run tellraw @s ["\n§a你已被管理员加入队伍（编号 §e$(tid)§a）。\n"]
$execute as @a[name="$(name)"] run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
$tellraw @s ["§a已把 §b$(name)§a 加入队伍 §e$(tid)§a。\n"]
