##
## /trigger team.pick.invite —— 邀请指定玩家（计分板值 = 对方的 park.uuid 本身）
## 由“邀请玩家”列表里的按钮触发；用 /trigger 而不是 /function，普通玩家（无 OP）也能用
##

# 目标 park.uuid 就是触发值本身（各自独立计分板，不做偏移，行数/uuid 变大也不会和操作编号撞区间）
execute store result score tmp.team.code board run scoreboard players get @s team.pick.invite

# 目标必须在线
scoreboard players set tmp.team.fail board 0
execute as @a if score @s park.uuid = tmp.team.code board run scoreboard players set tmp.team.fail board 1
execute if score tmp.team.fail board matches 0 run return run tellraw @s ["§c该玩家已不在线。\n"]

# 读取目标名字
kill @e[type=text_display,tag=team.probe]
execute as @a if score @s park.uuid = tmp.team.code board at @s run function minecraft:team/lib/probe_name
execute unless data storage minecraft:team_tmp probe run return run tellraw @s ["§c读取对方名字失败，请稍后再试。\n"]

# 组装参数包交给 action/invite
data modify storage minecraft:team_tmp args set value {targetkey:0,targetname:""}
execute store result storage minecraft:team_tmp args.targetkey int 1 run scoreboard players get tmp.team.code board
data modify storage minecraft:team_tmp args.targetname set from storage minecraft:team_tmp probe.name
function minecraft:team/action/invite with storage minecraft:team_tmp args

# 刷新邀请列表：刚邀请过的那一行会变成 [已邀请]，避免重复发送
function minecraft:team/trigger/invite
