##
## 组队系统（/trigger team）—— 计分项与数据结构注册
## 由 map_main 的 setup.mcfunction 调用；触发器分派在 map_main/main.mcfunction
## 注意：这里只 add、不 remove，避免重载时清空已有的队伍状态
##

scoreboard objectives add team trigger "§b队伍操作"
scoreboard objectives add team.id dummy "§b队伍ID"
scoreboard objectives add team.role dummy "§b队伍职位"

# “点了某一行”的入口各自一个计分板：值就是对方的 park.uuid / 名册索引本身，不做偏移，
# 这样行数和 uuid 再怎么变大也不会和操作编号（team 上的 1..11）撞区间
scoreboard objectives add team.pick.invite trigger "§b组队-邀请某一行"
scoreboard objectives add team.pick.kick trigger "§b组队-移出某一行"
scoreboard objectives add team.pick.transfer trigger "§b组队-转移队长某一行"

# 持久数据结构（首次运行时初始化）
execute unless data storage minecraft:team teams run data modify storage minecraft:team teams set value {}
execute unless data storage minecraft:team invites run data modify storage minecraft:team invites set value {}

# 队伍编号计数器（假玩家 team.count）
execute unless score team.count board matches 1.. run scoreboard players set team.count board 1

# 邀请有效期用的秒表（由 map_main/second.mcfunction 每秒 +1，重载不重置）
execute unless score team.clock board matches 1.. run scoreboard players set team.clock board 1

# 邀请有效期（秒）：默认 60；测试时可临时改大，例如 /scoreboard players set team.expiry board 600
execute unless score team.expiry board matches 1.. run scoreboard players set team.expiry board 60

# 邀请键索引（invites 的键清单）：创建邀请时登记，由 team/sweep 每 10 秒遍历清理
execute unless data storage minecraft:team invite_keys run data modify storage minecraft:team invite_keys set value []

# 清理分频计数器（每秒 +1，满 10 清零）：让清理每 10 秒只跑一轮
execute unless score team.sweep board matches 0.. run scoreboard players set team.sweep board 0

# 无效队伍清理的分频计数器（每秒 +1，满 30 清零）：队伍全员离线就自动删除
execute unless score team.sweep.dead board matches 0.. run scoreboard players set team.sweep.dead board 0

# 管理员开关：1 = 组队功能已被禁用（默认 0，管理员菜单里切换）
execute unless score team.disabled board matches 0.. run scoreboard players set team.disabled board 0
