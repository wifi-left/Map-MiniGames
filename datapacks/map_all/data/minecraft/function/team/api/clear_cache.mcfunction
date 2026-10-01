##
## 管理员：清理组队系统的全部缓存（一键重置）
##
## 用法：/function minecraft:team/api/clear_cache
##
## 清理内容：
##   1) 所有队伍名册 teams 与待处理邀请 invites（含邀请键索引 invite_keys）—— 相当于解散所有队伍、作废所有邀请
##   2) 组队临时数据 storage minecraft:team_tmp、残留的名字探测实体、残留的 team.pulling 标签
##   3) 所有玩家的 team.id / team.role 计分项（在线与离线都会清）
##   4) 队伍编号计数器重置为 1（秒表 team.clock 不重置，保持单调递增）
##
## 注意：不可撤销；只动组队系统自己的数据，不影响 park.uuid 等其它系统
## 只想清其中一部分时，可以手动执行：
##   /data remove storage minecraft:team teams
##   /data remove storage minecraft:team invites
##   /data modify storage minecraft:team invite_keys set value []
##   /data remove storage minecraft:team_tmp <键>     （storage 不能整块删，需逐个键）
##   /scoreboard players reset * team.id
##   /scoreboard players reset * team.role
##

# 先通知还在队伍里的玩家（要在清除计分项之前做，否则就选不到人了）
tellraw @a[scores={team.id=1..}] ["\n§c[队伍] 组队数据已被管理员重置，你已不在任何队伍中。\n"]
execute as @a[scores={team.id=1..}] at @s run playsound block.anvil.land player @s ~ ~ ~ 1 1 0

# 1) 临时数据 / 残留实体 / 残留标签
#    （storage 不能整块删，data remove storage <id> 不带路径是无效命令，必须逐个键删；
#      用 execute if data 兜一下，避免键不存在时报“找不到标签”）
execute if data storage minecraft:team_tmp api run data remove storage minecraft:team_tmp api
execute if data storage minecraft:team_tmp adminargs run data remove storage minecraft:team_tmp adminargs
execute if data storage minecraft:team_tmp adminrow run data remove storage minecraft:team_tmp adminrow
execute if data storage minecraft:team_tmp args run data remove storage minecraft:team_tmp args
execute if data storage minecraft:team_tmp count run data remove storage minecraft:team_tmp count
execute if data storage minecraft:team_tmp countstr run data remove storage minecraft:team_tmp countstr
execute if data storage minecraft:team_tmp dialog_tmp run data remove storage minecraft:team_tmp dialog_tmp
execute if data storage minecraft:team_tmp disband run data remove storage minecraft:team_tmp disband
execute if data storage minecraft:team_tmp force run data remove storage minecraft:team_tmp force
execute if data storage minecraft:team_tmp lobbycheck run data remove storage minecraft:team_tmp lobbycheck
execute if data storage minecraft:team_tmp loop run data remove storage minecraft:team_tmp loop
execute if data storage minecraft:team_tmp loop2 run data remove storage minecraft:team_tmp loop2
execute if data storage minecraft:team_tmp rm run data remove storage minecraft:team_tmp rm
execute if data storage minecraft:team_tmp next run data remove storage minecraft:team_tmp next
execute if data storage minecraft:team_tmp pick run data remove storage minecraft:team_tmp pick
execute if data storage minecraft:team_tmp pickrow run data remove storage minecraft:team_tmp pickrow
execute if data storage minecraft:team_tmp probe run data remove storage minecraft:team_tmp probe
execute if data storage minecraft:team_tmp pull_cmd run data remove storage minecraft:team_tmp pull_cmd
execute if data storage minecraft:team_tmp raw run data remove storage minecraft:team_tmp raw
execute if data storage minecraft:team_tmp row run data remove storage minecraft:team_tmp row
execute if data storage minecraft:team_tmp self run data remove storage minecraft:team_tmp self
execute if data storage minecraft:team_tmp summon run data remove storage minecraft:team_tmp summon
execute if data storage minecraft:team_tmp survivor run data remove storage minecraft:team_tmp survivor
execute if data storage minecraft:team_tmp survivor_tid run data remove storage minecraft:team_tmp survivor_tid
execute if data storage minecraft:team_tmp sweep run data remove storage minecraft:team_tmp sweep
execute if data storage minecraft:team_tmp sweep_key run data remove storage minecraft:team_tmp sweep_key
execute if data storage minecraft:team_tmp sweepmsg run data remove storage minecraft:team_tmp sweepmsg
execute if data storage minecraft:team_tmp selargs run data remove storage minecraft:team_tmp selargs
execute if data storage minecraft:team_tmp selfinv run data remove storage minecraft:team_tmp selfinv
execute if data storage minecraft:team_tmp selfsent run data remove storage minecraft:team_tmp selfsent
execute if data storage minecraft:team_tmp sentkey run data remove storage minecraft:team_tmp sentkey
execute if data storage minecraft:team_tmp tidloop run data remove storage minecraft:team_tmp tidloop
execute if data storage minecraft:team_tmp uuid run data remove storage minecraft:team_tmp uuid
kill @e[type=text_display,tag=team.probe]
tag @a remove team.pulling

# 2) 名册、邀请与邀请键索引（删掉后立刻重建空结构，保证后续流程能写）
data remove storage minecraft:team teams
data remove storage minecraft:team invites
data remove storage minecraft:team invite_keys
execute unless data storage minecraft:team teams run data modify storage minecraft:team teams set value {}
execute unless data storage minecraft:team invites run data modify storage minecraft:team invites set value {}
execute unless data storage minecraft:team invite_keys run data modify storage minecraft:team invite_keys set value []

# 3) 玩家计分项
scoreboard players reset * team.id
scoreboard players reset * team.role

# 4) 编号计数器、清理分频计数器与分队用的临时分数
scoreboard players set team.count board 1
scoreboard players set team.sweep board 0
scoreboard players set team.sweep.dead board 0
scoreboard players set team.room board 0
scoreboard players set team.cap board 0
scoreboard players set team.total board 0
scoreboard players set team.num board 0
scoreboard players set team.rem board 0
tag @a remove team.q
tag @a remove team.ok
tag @a remove team.seed
tag @a remove team.batch

tellraw @s ["§a组队缓存已清理：队伍名册、待处理邀请、临时数据、team.id / team.role 已全部重置。\n"]
